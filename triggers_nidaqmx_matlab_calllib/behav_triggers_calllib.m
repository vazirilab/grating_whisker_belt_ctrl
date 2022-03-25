%% Load Ni DAQmx dll and constants
addpath('C:\Program Files (x86)\National Instruments\Shared\ExternalCompilerSupport\C\include');
nilib = 'myni';	% library alias
if ~libisloaded(nilib)
    disp('Matlab: Load nicaiu.dll')
    loadlibrary('nicaiu.dll', 'nidaqmx.h', 'alias', nilib);
    %if you do NOT have nicaiu.dll and nidaqmx.h
    %in your Matlab path,add full pathnames or copy the files.

    % IMPORTANT: use the following commands to learn the exact function
    % signatures that Matlab generated for the C functions in the library.
    % Make sure the number and type of input and output arguments matches in your call to calllib()!
    %libfunctions(nilib, '-full') % use this to list the included functions in the console
    %libfunctionsview(nilib)     % use this to show the included functions in a GUI window
end
disp('Matlab: dll loaded')
disp('')
% load all DAQmx constants
NIconstants;  % defines struct niconst. Produces a lot of warnings that can probably be ignored

%% Define experiment parameters
P_bhv = struct;
P_bhv.wisim_fps = P.fps_twop;  % * P.smpl_clk_mult;
P_bhv.duration_trial_secs = 10 * 60;
P_bhv.duration_baseline_secs = 30;
P_bhv.period_arduino_clk_secs = 5;

P_bhv.period_whisker_secs = 60;
P_bhv.duration_whisker_secs = 2;

P_bhv.period_airpuff_secs = 60;
P_bhv.offset_airpuff_secs = 30;

P_bhv.daq_dev = 'PXI1slot5';
P_bhv.do_port = '/Port0/Line0:2'; % 0 = airpuff, 1 = whisker stim, 2 = IR LED
P_bhv.frame_clk_port = 'PFI6';  % NOTE: add jumper wire from slot4/PFI6 to slot5/PFI6 for 2p frame clk

% these are 0-based indices into the lines in P.do_port
P_bhv.line_arduino_clk = 2;  % this goes to wisim_clk input on arduino and causes LED to blink
P_bhv.line_ir_led = nan;  % not using this anymore
P_bhv.line_whisker = 1;
P_bhv.line_wisim_led = nan;
P_bhv.line_airpuff = 0;
%P_bhv.line_visual = 5; % --> jump wire to port0:4 for other matlab

%% Generate digital output sample table
do_table_bhv = zeros(P_bhv.wisim_fps * P_bhv.duration_trial_secs, 3);
do_table_bhv(1 : P_bhv.period_arduino_clk_secs * P_bhv.wisim_fps : end, P_bhv.line_arduino_clk + 1) = 1;

whisker_dframes = ceil(P_bhv.duration_whisker_secs * P_bhv.wisim_fps);
whisker_offsets = (P_bhv.duration_baseline_secs : P_bhv.period_whisker_secs : (P_bhv.duration_trial_secs - P_bhv.duration_whisker_secs)) * P_bhv.wisim_fps;
for i = 1:numel(whisker_offsets)
    do_table_bhv(whisker_offsets(i) : whisker_offsets(i) + whisker_dframes, P_bhv.line_whisker + 1) = 1;
end

airpuff_dframes = 1;
airpuff_offsets = (P_bhv.duration_baseline_secs + P_bhv.offset_airpuff_secs : P_bhv.period_airpuff_secs : (P_bhv.duration_trial_secs)) * P_bhv.wisim_fps;
for i = 1:numel(airpuff_offsets)
    do_table_bhv(airpuff_offsets(i) : airpuff_offsets(i) + airpuff_dframes, P_bhv.line_airpuff + 1) = 1;
end
%do_table(((P.duration_baseline_secs + P.offset_visual_secs) * P.wisim_fps) : (P.period_visual_secs  * P.wisim_fps) : end, P.line_visual + 1) = 1;

%do_table(:, P.line_wisim_led + 1) = 1;
do_table_bhv(end + 1,:) = 0;  % set everything to zero after end of experiment
disp(['No. of behavior DO samples: ' num2str(P_bhv.wisim_fps * P_bhv.duration_trial_secs)]);

%% Plot sample table
figure;
hold on;
for i = 1:size(do_table_bhv,2)
    stairs(do_table_bhv(:,i) + (i-1) * 1.1, '.-');
end
hold off;

%% Second DO task, with sample clk from CO task, for stim/behav signals
if exist('dotask_bhv', 'var') && ~isempty(dotask_bhv)
    try
        [err] = calllib(nilib,'DAQmxClearTask', dotask_bhv);
        DAQmxCheckError(nilib, err);
    catch me
        disp(me);
    end
end

%% Create digital output task and download sample table
dotask_bhv = [];
name_task = '';  % recommended to avoid problems
[err, b, dotask_bhv] = calllib(nilib, 'DAQmxCreateTask', name_task, uint32(dotask_bhv));
DAQmxCheckError(nilib, err);

%int32 DAQmxCreateDOChan (TaskHandle taskHandle, const char lines[], const char nameToAssignToLines[], int32 lineGrouping);
lines = [P_bhv.daq_dev P_bhv.do_port];
nameToAssignToLines = '';
[err, a, b, c] = calllib(nilib, 'DAQmxCreateDOChan', dotask_bhv, lines, nameToAssignToLines, niconst.DAQmx_Val_ChanPerLine);
DAQmxCheckError(nilib, err);

%int32 DAQmxCfgSampClkTiming (TaskHandle taskHandle, const char source[], float64 rate, int32 activeEdge, int32 sampleMode, uInt64 sampsPerChanToAcquire);
clk_source = P_bhv.frame_clk_port;  % [P.ctr_dev 'InternalOutput'];
rate = P.fps_twop;  %  * P.smpl_clk_mult;
sampsPerChanToAcquire = size(do_table_bhv, 1);
[err, a, b] = calllib(nilib, 'DAQmxCfgSampClkTiming', dotask_bhv, clk_source, rate, niconst.DAQmx_Val_Rising, niconst.DAQmx_Val_FiniteSamps, sampsPerChanToAcquire);
DAQmxCheckError(nilib, err);

%int32 DAQmxCfgDigEdgeStartTrig (TaskHandle taskHandle, const char triggerSource[], int32 triggerEdge);
%trigger_source = P.frame_clk_terminal;
trigger_source = P_bhv.frame_clk_port;
[err, a, b] = calllib(nilib, 'DAQmxCfgDigEdgeStartTrig', dotask_bhv, trigger_source, niconst.DAQmx_Val_Rising);
DAQmxCheckError(nilib, err);

%int32 __CFUNC DAQmxSetStartTrigRetriggerable(TaskHandle taskHandle, bool32 data);
[err, a] = calllib(nilib, 'DAQmxSetStartTrigRetriggerable', dotask_bhv, false);
DAQmxCheckError(nilib, err);

%int32 DAQmxWriteDigitalLines (TaskHandle taskHandle, int32 numSampsPerChan, bool32 autoStart, float64 timeout, bool32 dataLayout, uInt8 writeArray[], int32 *sampsPerChanWritten, bool32 *reserved);
autostart = false;
timeout = 3;
do_vals = uint8(do_table_bhv(:));
sampsPerChanWritten = 0;
sampsPerChanWrittenPtr = libpointer('int32Ptr', sampsPerChanWritten);
[err, a, b, c, d] = calllib(nilib, 'DAQmxWriteDigitalLines', dotask_bhv, sampsPerChanToAcquire, autostart, timeout, niconst.DAQmx_Val_GroupByChannel, do_vals, sampsPerChanWrittenPtr, libpointer('uint32Ptr')); 
DAQmxCheckError(nilib, err);
sampsPerChanWrittenPtr.Value

[err] = calllib(nilib,'DAQmxStartTask', dotask_bhv);
DAQmxCheckError(nilib, err);

save(['behavior_pulse_config_' datestr(clock,'YYYY-mm-dd_HHMMSS') '.mat'], 'P_bhv', 'do_table_bhv');
disp(['Experiment start: ' datestr(clock,'YYYY-mm-dd_HHMMSS')]);

%% For testing, just toggle a single digital output line
if exist('dotask_bhv', 'var') && ~isempty(dotask_bhv)
    try
        [err] = calllib(nilib,'DAQmxClearTask', dotask_bhv);
        DAQmxCheckError(nilib, err);
    catch me
        disp(me);
    end
end

dotask_bhv = [];
name_task = '';  % recommended to avoid problems
[err, b, dotask_bhv] = calllib(nilib, 'DAQmxCreateTask', name_task, uint32(dotask_bhv));
DAQmxCheckError(nilib, err);

%int32 DAQmxCreateDOChan (TaskHandle taskHandle, const char lines[], const char nameToAssignToLines[], int32 lineGrouping);
lines = [P_bhv.daq_dev P_bhv.do_port];
nameToAssignToLines = '';
[err, a, b, c] = calllib(nilib, 'DAQmxCreateDOChan', dotask_bhv, lines, nameToAssignToLines, niconst.DAQmx_Val_ChanPerLine);
DAQmxCheckError(nilib, err);

%int32 DAQmxCfgSampClkTiming (TaskHandle taskHandle, const char source[], float64 rate, int32 activeEdge, int32 sampleMode, uInt64 sampsPerChanToAcquire);
clk_source = 'OnboardClock';  % [P.ctr_dev 'InternalOutput'];
rate = 1000;  %  * P.smpl_clk_mult;
sampsPerChanToAcquire = 2;
[err, a, b] = calllib(nilib, 'DAQmxCfgSampClkTiming', dotask_bhv, clk_source, rate, niconst.DAQmx_Val_Rising, niconst.DAQmx_Val_FiniteSamps, sampsPerChanToAcquire);
DAQmxCheckError(nilib, err);

%int32 DAQmxWriteDigitalLines (TaskHandle taskHandle, int32 numSampsPerChan, bool32 autoStart, float64 timeout, bool32 dataLayout, uInt8 writeArray[], int32 *sampsPerChanWritten, bool32 *reserved);
autostart = true;
timeout = 0.1;
do_vals = uint8([0 0 0 0 1 0]);  % have to download two samples (timestep 1 and 2) per channel, so this is [air1 air2 whisk1 whisk1 led1 led1]
%do_vals = uint8([0 0 1 1 0 0]);  % [air air whisk whisk led led]
sampsPerChanWritten = 0;
sampsPerChanWrittenPtr = libpointer('int32Ptr', sampsPerChanWritten);
[err, a, b, c, d] = calllib(nilib, 'DAQmxWriteDigitalLines', dotask_bhv, sampsPerChanToAcquire, autostart, timeout, niconst.DAQmx_Val_GroupByChannel, do_vals, sampsPerChanWrittenPtr, libpointer('uint32Ptr')); 
DAQmxCheckError(nilib, err);
sampsPerChanWrittenPtr.Value

%% Stop and clear digital out task
if exist('dotask_bhv', 'var') && ~isempty(dotask_bhv)
    try
        [err] = calllib(nilib,'DAQmxClearTask', dotask_bhv);
        DAQmxCheckError(nilib, err);
    catch me
        disp(me);
    end
end

%% Unload NI DaqMX library
unloadlibrary(nilib);

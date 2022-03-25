%%
% ScanImage frame clk is master
% need to generate trigger for cam, LED and gate for PMT
% cam trigger is simply clock-divided from 2p frame clk
% LED gets switched on sync with cam, but only every other n frames
% PMT gate is basically just negated version of LED trigger, but would be
% good to add some padding to make sure LED is really off
% do we have to disable laser (EOM) during cam exposure? probably not

%% Clk divider for 2p clk -> cam clk
% 2p clk is ~ 140 Hz
% deviceName = 'PXI1Slot4';
% ctrNumber = 3;
% clockSource = '/PXI1Slot4/PXI_CLK10';
% outputTerminal = 'PFI14';
% clkDivisor = 14;
% 
% assert(mod(clkDivisor,1)==0 && clkDivisor>=4,'Divisor must be an integer >= 4'); % lowTicks and highTicks must be >= 2
% 
% lowTicks = ceil(clkDivisor/2);
% highTicks = floor(clkDivisor/2);
% 
% hTask = most.util.safeCreateTask('Clock Divider');
% hTask.createCOPulseChanTicks(deviceName, ctrNumber, '', clockSource, lowTicks, highTicks);
% hTask.channels(1).set('pulseTerm',outputTerminal);
% hTask.channels(1).set('pulseTicksInitialDelay',2); % minimum of 2
% hTask.cfgImplicitTiming('DAQmx_Val_ContSamps');
% 
% hTask.start();

%%
P = struct;
P.daq_dev = 'PXI1slot4';
P.do_port = '/Port0/Line0:2';
P.frame_clk_terminal = 'PFI6';  % TODO: set correctly
P.ctr_dev = 'Ctr2';
P.fps_twop = 143;
P.smpl_clk_mult = 100;
P.n_fast_samples = P.fps_twop * P.smpl_clk_mult;
P.cam_2p_interval = 14 * P.smpl_clk_mult;  % camera frame every 14 2p frames = 10 cam fps. We just do a short pulse
P.led_2p_interval = 1 * P.smpl_clk_mult;  % LED frame every other cam frames = every 28 2p frams
P.gate_padding = 1; % safety margin around LED pulse

%% Two 2p frames of pulses
do_table = zeros(2 * P.smpl_clk_mult, 3);  % channels: (cam, led, pmt_gate)
spf = P.smpl_clk_mult;
% cam trig just goes up on every frame:
do_table(1:2, 1) = 1;
do_table(spf : spf + 1, 1) = 1;

% LED goes up on second fast frame, and down on last but one of first frame
do_table((spf + 1) : (2*spf - 20), 2) = 1;

% PMT on during first frame,with a bit of gap towards second frame
do_table(1 : spf - 2, 3) = 1;
% let's also switch PMT on towards end of second frame, to avoid turn-on glitch
do_table(end-1:end, 3) = 1;
% PMT output is on when gate signal is low, so let's invert this
do_table(:, 3) = ~do_table(:, 3);

%% New scheme: Three 2p frames of pulses: LED - 2p - 2p
% do_table = zeros(3 * P.smpl_clk_mult, 3);  % channels: (cam, led, pmt_gate)
% spf = P.smpl_clk_mult;
% % cam trig just goes up on every frame:
% do_table(1:2, 1) = 1;
% do_table(spf : spf + 1, 1) = 1;
% do_table(2 * spf : 2 * spf + 1, 1) = 1;
% 
% % LED goes up on second fast frame,
% do_table((spf + 1) : (2*spf), 2) = 1;
% 
% % PMT on during first frame,with a bit of gap towards second frame
% do_table(1 : spf-10, 3) = 1;
% % let's also switch PMT on in last frame. can't keep shutter closed for
% % more than 10 ms
% do_table((2 * spf)+ 30 :end, 3) = 1;
% % PMT output is on when gate signal is low, so let's invert this
% do_table(:, 3) = ~do_table(:, 3);

%% New scheme: Five 2p frames of pulses: LED - LED for half - 
% do_table = zeros(5 * P.smpl_clk_mult, 3);  % channels: (cam, led, pmt_gate)
% spf = P.smpl_clk_mult;
% % cam trig just goes up on every frame:
% do_table(1:2, 1) = 1;
% do_table(spf : spf + 1, 1) = 1;
% do_table(2 * spf : 2 * spf + 1, 1) = 1;
% do_table(3 * spf : 3 * spf + 1, 1) = 1;
% do_table(4 * spf : 4 * spf + 1, 1) = 1;
% do_table(5 * spf : 5 * spf + 1, 1) = 1;
% 
% % LED goes up on second fast frame, and down halfway through the third fram
% do_table((spf + 1) : (2*spf + 40), 2) = 1;
% 
% % PMT on during first frame,with a bit of gap towards second frame
% do_table(1 : spf-10, 3) = 1;
% % let's also switch PMT on towards end of last frame, to avoid turn-on glitch
% do_table(end-5:end, 3) = 1;
% % PMT output is on when gate signal is low, so let's invert this
% do_table(:, 3) = ~do_table(:, 3);

%%
figure;
hold on;s
for i = 1:size(do_table,2)
    stairs(do_table(:,i) + (i-1) * 1.1, '.-');
end
hold off;

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
NIconstants;  % defines struct niconst

%% Create tasks: we need a CO task to generate a finite pulse train at the right freq, and a DO task to generate the ctrl pulses
if exist('cotask', 'var') && ~isempty(cotask)
    try
        [err] = calllib(nilib,'DAQmxClearTask', cotask);
        DAQmxCheckError(nilib, err);
    catch me
        disp(me);
    end
end

cotask = [];
name_task = '';  % recommended to avoid problems
[err, b, cotask] = calllib(nilib, 'DAQmxCreateTask', name_task, uint32(cotask));
DAQmxCheckError(nilib, err);

%int32 DAQmxCreateCOPulseChanFreq (TaskHandle taskHandle, const char counter[], const char nameToAssignToChannel[], int32 units, int32 idleState, float64 initialDelay, float64 freq, float64 dutyCycle);
lines = [P.daq_dev '/' P.ctr_dev];
name_line = '';
freq = P.fps_twop * P.smpl_clk_mult;
[err, a, b, c] = calllib(nilib, 'DAQmxCreateCOPulseChanFreq', cotask, lines, name_line, niconst.DAQmx_Val_Hz, niconst.DAQmx_Val_Low, 0, freq, 0.5);
DAQmxCheckError(nilib, err);

%int32 DAQmxCfgImplicitTiming (TaskHandle taskHandle, int32 sampleMode, uInt64 sampsPerChanToAcquire);
sampsPerChanToAcquire = size(do_table, 1);
[err, a] = calllib(nilib, 'DAQmxCfgImplicitTiming', cotask, niconst.DAQmx_Val_FiniteSamps, sampsPerChanToAcquire);
DAQmxCheckError(nilib, err);

%int32 DAQmxCfgDigEdgeStartTrig (TaskHandle taskHandle, const char triggerSource[], int32 triggerEdge);
trigger_source = P.frame_clk_terminal;
[err, a, b] = calllib(nilib, 'DAQmxCfgDigEdgeStartTrig', cotask, trigger_source, niconst.DAQmx_Val_Rising);
DAQmxCheckError(nilib, err);

%int32 __CFUNC DAQmxSetStartTrigRetriggerable(TaskHandle taskHandle, bool32 data);
[err, a] = calllib(nilib, 'DAQmxSetStartTrigRetriggerable', cotask, true);
DAQmxCheckError(nilib, err);

[err] = calllib(nilib,'DAQmxStartTask', cotask);
DAQmxCheckError(nilib, err);

%% DO task, with sample clk from CO task
if exist('dotask', 'var') && ~isempty(dotask)
    try
        [err] = calllib(nilib,'DAQmxClearTask', dotask);
        DAQmxCheckError(nilib, err);
    catch me
        disp(me);
    end
end

dotask = [];
name_task = '';  % recommended to avoid problems
[err, b, dotask] = calllib(nilib, 'DAQmxCreateTask', name_task, uint32(dotask));
DAQmxCheckError(nilib, err);

%int32 DAQmxCreateDOChan (TaskHandle taskHandle, const char lines[], const char nameToAssignToLines[], int32 lineGrouping);
lines = [P.daq_dev P.do_port];
nameToAssignToLines = '';
[err, a, b, c] = calllib(nilib, 'DAQmxCreateDOChan', dotask, lines, nameToAssignToLines, niconst.DAQmx_Val_ChanPerLine);
DAQmxCheckError(nilib, err);

%int32 DAQmxCfgSampClkTiming (TaskHandle taskHandle, const char source[], float64 rate, int32 activeEdge, int32 sampleMode, uInt64 sampsPerChanToAcquire);
source = [P.ctr_dev 'InternalOutput'];
rate = P.fps_twop * P.smpl_clk_mult;
sampsPerChanToAcquire = size(do_table, 1);
[err, a, b] = calllib(nilib, 'DAQmxCfgSampClkTiming', dotask, source, rate, niconst.DAQmx_Val_Rising, niconst.DAQmx_Val_FiniteSamps, sampsPerChanToAcquire);
DAQmxCheckError(nilib, err);

%int32 DAQmxCfgDigEdgeStartTrig (TaskHandle taskHandle, const char triggerSource[], int32 triggerEdge);
trigger_source = P.frame_clk_terminal;
[err, a, b] = calllib(nilib, 'DAQmxCfgDigEdgeStartTrig', dotask, trigger_source, niconst.DAQmx_Val_Rising);
DAQmxCheckError(nilib, err);

%int32 __CFUNC DAQmxSetStartTrigRetriggerable(TaskHandle taskHandle, bool32 data);
[err, a] = calllib(nilib, 'DAQmxSetStartTrigRetriggerable', dotask, true);
DAQmxCheckError(nilib, err);

%int32 DAQmxWriteDigitalLines (TaskHandle taskHandle, int32 numSampsPerChan, bool32 autoStart, float64 timeout, bool32 dataLayout, uInt8 writeArray[], int32 *sampsPerChanWritten, bool32 *reserved);
autostart = false;
timeout = 0.2;
do_vals = uint8(do_table(:));
sampsPerChanWritten = 0;
sampsPerChanWrittenPtr = libpointer('int32Ptr', sampsPerChanWritten);
[err, a, b, c, d] = calllib(nilib, 'DAQmxWriteDigitalLines', dotask, sampsPerChanToAcquire, autostart, timeout, niconst.DAQmx_Val_GroupByChannel, do_vals, sampsPerChanWrittenPtr, libpointer('uint32Ptr')); 
DAQmxCheckError(nilib, err);
sampsPerChanWrittenPtr.Value

[err] = calllib(nilib,'DAQmxStartTask', dotask);
DAQmxCheckError(nilib, err);

%%
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
%P.line_visual = 5; % --> jump wire to port0:4 for other matlab

%%
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

%%
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

save(['f:\TN\mesolf_verification_pulse_config_' datestr(clock,'YYYY-mm-dd_HHMMSS') '.mat'], 'P', 'do_table', 'P_bhv', 'do_table_bhv');
disp(['Experiment start: ' datestr(clock,'YYYY-mm-dd_HHMMSS')]);

%% CO stop
[err] = calllib(nilib,'DAQmxStopTask', cotask);
DAQmxCheckError(nilib, err);
[err] = calllib(nilib,'DAQmxClearTask', cotask);
DAQmxCheckError(nilib, err);
clear sampsPerChanWrittenPtr;

%% DO 1 stop
[err] = calllib(nilib,'DAQmxStopTask', dotask);
DAQmxCheckError(nilib, err);
[err] = calllib(nilib,'DAQmxClearTask', dotask);
DAQmxCheckError(nilib, err);

%% DO 2 stop
[err] = calllib(nilib,'DAQmxStopTask', dotask_bhv);
DAQmxCheckError(nilib, err);
[err] = calllib(nilib,'DAQmxClearTask', dotask_bhv);
DAQmxCheckError(nilib, err);

%%
%% For testing, just toggle a single line
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
do_vals = uint8([0 0 0 0 1 0]);  % [air air whisk whisk led led]
%do_vals = uint8([0 0 1 1 0 0]);  % [air air whisk whisk led led]
sampsPerChanWritten = 0;
sampsPerChanWrittenPtr = libpointer('int32Ptr', sampsPerChanWritten);
[err, a, b, c, d] = calllib(nilib, 'DAQmxWriteDigitalLines', dotask_bhv, sampsPerChanToAcquire, autostart, timeout, niconst.DAQmx_Val_GroupByChannel, do_vals, sampsPerChanWrittenPtr, libpointer('uint32Ptr')); 
DAQmxCheckError(nilib, err);
sampsPerChanWrittenPtr.Value

%%
unloadlibrary(nilib);

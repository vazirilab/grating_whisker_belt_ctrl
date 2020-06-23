P = struct;
P.wisim_fps = 10;
P.duration_trial_secs = 900;
P.duration_baseline_secs = 30;
P.period_arduino_clk_secs = 5;
P.offset_visual_secs = 6;
P.n_visual = 13;
P.period_visual_secs = 5;  % number of phase steps in visual stim matlab script: 13
P.duration_visual_secs = 1;  % only controls pulse duration and not stimulus duration
P.period_whisker_secs = (P.n_visual + 1) * P.period_visual_secs;
P.duration_whisker_secs = 0.5;

P.daq_dev = 'PXI1slot4';
%P.daq_dev = 'Dev4';
P.line_arduino_clk = 0;
P.line_ir_led = nan;
P.line_whisker = 1;
P.line_wisim_led = 2;
P.line_visual = 3; % --> jump wire to port0:4 for other matlab


%%
co_sess = daq.createSession('ni');
%addDigitalChannel(co_sess, 'PXI1co_sesslot5', , 'OutputOnly');
co_ch = addCounterOutputChannel(co_sess, P.daq_dev, 0, 'PulseGeneration');
co_ch.Frequency = P.wisim_fps;
co_ch.Terminal
co_sess.IsContinuous = false;
co_sess.DurationInSeconds = P.duration_trial_secs + 2/P.wisim_fps;

%%
do_table = zeros(P.wisim_fps * P.duration_trial_secs, 4);

do_table(1 : P.period_arduino_clk_secs * P.wisim_fps : end, P.line_arduino_clk + 1) = 1;

%do_table(1 : P.period_ir_led_secs      * P.wisim_fps : end, 2) = 1;

whisker_dframes = ceil(P.duration_whisker_secs * P.wisim_fps);
whisker_offsets = (P.duration_baseline_secs : P.period_whisker_secs : (P.duration_trial_secs - P.duration_whisker_secs)) * P.wisim_fps;
for i = 1:numel(whisker_offsets)
    do_table(whisker_offsets(i) : whisker_offsets(i) + whisker_dframes, P.line_whisker + 1) = 1;
end

visual_dframes = ceil(P.duration_visual_secs * P.wisim_fps);
visual_offsets = ((P.duration_baseline_secs + P.offset_visual_secs) : P.period_visual_secs : (P.duration_trial_secs - P.duration_visual_secs)) * P.wisim_fps;
for i = 1:numel(visual_offsets)
    if mod(i, P.n_visual + 1) == 0  % leave out every P.n_visual'th pulse to make space for whisker stim
        continue;
    else
        do_table(visual_offsets(i) : (visual_offsets(i) + visual_dframes), P.line_visual + 1) = 1;
    end
end
%do_table(((P.duration_baseline_secs + P.offset_visual_secs) * P.wisim_fps) : (P.period_visual_secs  * P.wisim_fps) : end, P.line_visual + 1) = 1;

do_table(:, P.line_wisim_led + 1) = 1;
do_table(end + 1,:) = 0;  % set everything to zero after end of experiment

%%
figure;
hold on;
for i = 1:size(do_table,2)
    stairs(do_table(:,i) + (i-1) * 1.1);
end
hold off;

%%
do_sess = daq.createSession('ni');
do_ch = addDigitalChannel(do_sess, P.daq_dev, 'Port0/Line0:3', 'OutputOnly');
do_sess.IsContinuous = 0;
addClockConnection(do_sess, 'External', [P.daq_dev '/' co_ch.Terminal], 'ScanClock');

%%
queueOutputData(do_sess, do_table);
save(['pulse_config_' datestr(clock,'YYYY-mm-dd_HHMMSS') '.mat'], 'P', 'do_table');
disp(['Experiment start: ' datestr(clock,'YYYY-mm-dd_HHMMSS')]);
do_sess.startBackground();
co_sess.startBackground();


%%
do_sess.IsDone
co_sess.IsDone

%%
co_sess.stop()
do_sess.stop()
outputSingleScan(do_sess, [0 0 0 0]);

%% Move brush in
outputSingleScan(do_sess, [0 1 0 0]);

%% Move brush out
outputSingleScan(do_sess, [0 0 0 0]);

%% Blink IR LED
outputSingleScan(do_sess, [1 0 0 0]);
outputSingleScan(do_sess, [0 0 0 0]);

%% Visual stim
outputSingleScan(do_sess, [0 0 0 1]);
pause(0.3);
outputSingleScan(do_sess, [0 0 0 0]);

%% Blink wisim excitation LED
outputSingleScan(do_sess, [0 0 1 0]);
pause(0.3);

%%
outputSingleScan(do_sess, [0 0 0 0]);

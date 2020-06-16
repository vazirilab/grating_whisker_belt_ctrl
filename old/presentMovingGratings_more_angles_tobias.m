clear all;
close all;
diary off;

%%
presentTime = 1; % trial duration (s)

phi_nsteps = 18;
dphi = 2/phi_nsteps;
phi = (0 : dphi : dphi * (phi_nsteps - 1)) * pi;  % range of grating angles to present

scrn_size_deg = 43; %degrees
spatial_freq = 0.0698; %cycles/degree;
num_cycles = scrn_size_deg .* spatial_freq;
temporal_freq = 1; % Hz

% warning('off', 'Images:initSize:adjustingMag');

%% Setup the DAQ
s = daq.createSession('ni');
ch1 = addDigitalChannel(s, 'PXI1Slot5', 'Port0/Line5', 'InputOnly');
%lh = addlistener(s, 'DataAvailable', @show_stimulus);
s.IsContinuous = true;
%s.Rate = 1000;

%% Prepare figure window
pos = get(0,'MonitorPositions');
pos = pos(2,:);
scrn_size_y = pos(4);
scrn_size_x = pos(3);
if ishandle(666)
    close 666
end
figure(666);
set(gcf, 'Units', 'Pixels');
set(gcf, 'Position', pos);
ax = gca;
set(ax,'units', 'pixels');
w_pos = get(gcf, 'position');
set(ax, 'position', [0 0 w_pos(3) w_pos(4)]);
set(gcf,'Color',[0 0 0])

%% Setup the stack of stimulating images
Xstack = zeros(scrn_size_y,scrn_size_x,4);
% phi = [0 pi/4 pi/2 3*pi/4];
x = 1:size(Xstack,2);
y = 1:size(Xstack,1);
[X,Y] = meshgrid(x,y);

angle_sec = temporal_freq/spatial_freq; %degrees/s
pix_sec = angle_sec*scrn_size_y/scrn_size_deg; % pix/s
phase_increment = 0.12 * pix_sec;
a = 2.*pi.*num_cycles/scrn_size_y;

for ii = 1:numel(phi)
    Xp = X.*cos(phi(ii)) - Y.*sin(phi(ii));
    Xstack(:,:,ii) = Xp;
end

% Begin the while loop
imshow(zeros(size(Xstack,1),size(Xstack,2)));

clear x y X Y Xp Itemp

%%
diary(['vis_stim_' datestr(clock,'YYYY-mm-dd_HHMMSS') '.txt']);
diary on;
n_drift_frames = 60;
clear A
figure(666);
ax = imshow(zeros(size(Xstack,1),size(Xstack,2)));
phi_ix = 1;
while true;
    [captured_data,~] = inputSingleScan(s);
    if ~exist('A','var')
        XX = repmat(Xstack(:,:,phi_ix),[1 , 1, n_drift_frames]);
        inds = 1:n_drift_frames;
        inds = reshape(inds,1,1,n_drift_frames);
        inds = repmat(inds,[size(XX,1), size(XX,2),1]);
        A = round((1+sin(a*(XX+round(phase_increment.*inds))))/2);
    end    
    if captured_data > 0
        disp(['Start phi = ' num2str(phi(phi_ix))]);
        disp(datestr(clock,'YYYY-mm-dd HH:MM:SS:FFF'));
        tic
        fi = 1;
        while toc < presentTime
            fprintf('%d ', fi);
            ax.CData = squeeze(A(:,:,fi));
            drawnow
            %set(gcf,'Position',pos)
            fi = mod(fi, n_drift_frames) + 1;
        end
        fprintf('\n');
        clear A
        
        ax.CData = zeros(size(XX(:,:,1))); 
        set(gcf,'Position',pos)

        phi_ix = phi_ix+1;
        if phi_ix > numel(phi)
            phi_ix = 1;
        end
    end
    pause(0.005);
end

    
%%
diary off;
ax.CData = zeros(size(XX(:,:,1)));
%stop(s);

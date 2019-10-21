%% PLOT DATA

% Load data
E1 = csvread('Data/E1_ProliferationAssay.csv',1);
E2 = csvread('Data/E2_BarrierAssay.csv',1);
E3 = csvread('Data/E3_InvasionAssay.csv',1);

% Proliferation assay - carrying capacity
K = 2.8e-3;
E1 = E1 / K;

% Plot proliferation assay
subplot(1,3,1);
    plot([0,24,48],E1','b.')
    
    title('E1: Proliferation assay');
    xlabel('Time (h)'); ylabel('Non-dimensional density');
    axis([-6,54,0,1.2]); xticks([0 24 48]);
    
% Plot barrier assay
subplot(1,3,2);
    plot([0,48,96],E2','b.')
    
    title('E2: Barrier assay');
    xlabel('Time (h)'); ylabel('Radius (\mum)');
    axis([-12,108,2500,5000]); xticks([0 48 96]);
    
% Plot invasion assay
subplot(1,3,3);
    plot([9,15,20],E3','b.')
    
    title('E3: Invasion assay');
    xlabel('Time (days)'); ylabel('Invasion depth (\mum)');
    axis([0,24,0,200]); xticks([0 9 15 20]);
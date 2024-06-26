clc;
clear;

Tsim = 15; % [s] Simulation time

% Solar Panel Parameters
PVparams.CellTemp1 = 25;         % [C] Initial temperature of PV1
PVparams.Irradiance1 = 7000;     % [W/m^2] Solar Irradiance of PV1
PVparams.Series1 = 6;           % [#] cells in series of PV1
PVparams.Parallel1 = 2;         % [#] cells in parallel of PV1

PVparams.CellTemp2 = 25;         % [C] Initial temperatire of PV2
PVparams.Irradiance2 = 7000;     % [W/m^2] Solar Irradiance of PV2
PVparams.Series2 = 6;           % [#] cells in series of PV2
PVparams.Parallel2 = 2;         % [#] cells in parallel of PV2

% Simple Ideal Converter Parameters
ConverterParams.OutputVoltage = 48;  % [V] output voltage from the solar panels

% Boost Converter Parameters
% Boostparams.L = 1e-3;            % [H] Inductor value
% Boostparams.Cin = 1e-6;          % [F] Input Capacitor Value
% Boostparams.Cout = 1e-6;         % [F] Output Capacitor Value
% Boostparams.MosfetPWM = 99;      % [%] Pulse Generator pulse width (% of period)
% Boostparams.Tau = 2;             % [s] length of pulse period
% 
% % Buck Converter Parameters
% Buckparams.L = 1e-3;             % [H] Inductor value
% Buckparams.Cin = 1e-6;           % [F] Input Capacitor Value
% Buckparams.Cout = 1e-6;          % [F] Output Capacitor Value
% Buckparams.MosfetPWM = 5;        % [%] Pulse Generator pulse width (% of period)
% 
% % Buck - Boost Converter Parameters
% BuckBoostparams.L = 1e-3;            % [H] Inductor value
% BuckBoostparams.Cin = 1e-6;          % [F] Input Capacitor Value
% BuckBoostparams.Cout = 1e-6;         % [F] Output Capacitor Value
% BuckBoostparams.MosfetPWM = 50;      % [%] Pulse Generator pulse width (% of period)
% BuckBoostparams.Tau = 1;             % [s] length of pulse period

% Motor Parameters
params.Inertia = 0.1;            % [kg*m^2] Intertia on Rotational Motion Signal side of Motor (green)

params.RPM = 50;                % [RPM] target rpm for motors

params.WheelRadius = 0.125       % [m] radius of the wheels

% params.Torque1 = 10;             % [N*m] Torque Demand for motor 1
% params.Torque2 = 10;             % [N*m] Torque Demand for motor 2
% params.Torque3 = 10;             % [N*m] Torque Demand for motor 3
% params.Torque4 = 10;             % [N*m] Torque Demand for motor 4

% Constant Power Load Parameters
Loadparams.power = 100;   % [W]
Loadparams.MinSupV = 12;  % [V]

%% Simulation Run
out = sim("AgrivoltaicPlatformBasic5_28.slx",Tsim);

%% Plotting

myResults = out.Results;
V1 = myResults(:,1);
V2 = myResults(:,2);
time = myResults(:,3);

figure(1),
subplot(211)
plot(time,V1,'r','LineWidth',2), grid on, grid minor
xlabel("time [s]")
subplot(212)
plot(time,V2)

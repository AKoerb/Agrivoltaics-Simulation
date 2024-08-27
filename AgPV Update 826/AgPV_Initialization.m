clc;
clear;

Tsim = 86400; % [s] Simulation time (86400s is one full day)

Irradiance = readmatrix("Spring_Average.txt");
PVparams.irradiance = Irradiance;

%MotionParam.MotionProfile = readmatrix("AgPVMotionProfile.csv");
TestParams.TestProfile = readmatrix("TestProfile.csv");

%General Parameters
GenParams.PlatformMass = 13000;  % [kg] Total mass of the platform
GenParams.WheelRadius = 0.3048;  % [m] radius of the drive wheels

GenParams.DesiredAcceleration = 0.02778; % [m/s^2] Desired Acceleration of the platform
GenParams.GroundGradient = 1;  % [degrees] Angle of the gradient the platform is moving on
GenParams.RollingCoefficient = 0.02; % [unitless] rolling force coefficient of the track or wheel rolling on the ground

GenParams.PlatformNormalForce = GenParams.PlatformMass * 9.81;  % [N] normal force of the platform

%Rolling Resistance Parameters
Bn_HardSoil = 80;  % [unitless] ratio dependent on the wheel and soil
Bn_FirmSoil = 55;
Bn_TilledSoil = 40;
Bn_SoftSoil = 20;
s = 0.05;  % [unitless] slippage coefficient

Resist.Acceleration = GenParams.PlatformMass * GenParams.DesiredAcceleration; % [N] resistant force
Resist.Gradient = GenParams.PlatformNormalForce * sin(GenParams.GroundGradient*pi/180); % [N] resistant force
Resist.Rolling = GenParams.PlatformNormalForce * GenParams.RollingCoefficient; % [N] resistant force
Resist.SlippageAndSinkage = GenParams.PlatformNormalForce * ((1/Bn_HardSoil) + 0.04 + ((0.05 * s)/sqrt(Bn_HardSoil)));

% Motor Parameters
Motor.MaxTorque = 112.47;   % [Nm] Maximum torque output of the motors
Motor.MaxPower = 7500;  % [W] Maximum power drawn by the motor
Motor.Efficiency = 90.4;  % [%] overall efficiency of the motor
Motor.MeasureRPM = 1500;  % [RPM] speed at which efficiency is measured
Motor.MeasureTorque = 48.9;  % [Nm] torque at which efficiency is measured
Motor.RotorInertia = 0.0447;  % [kg m^2] Inertia of the rotor
Motor.RotorDamping = 1e-5;  % [N m s /rad] Damping of the rotor

% Solar Panel Parameters
Temperature = readmatrix("Spring_Average_Temp.txt");
PVparams.CellTemp = Temperature;         % [C] Temperature profile for the day
PVparams.Series1 = 10;           % [#] cells in series of PV1
PVparams.Parallel1 = 2;         % [#] cells in parallel of PV1
PVparams.Series2 = 10;           % [#] cells in series of PV2
PVparams.Parallel2 = 2;         % [#] cells in parallel of PV2

% Simple Ideal Converter Parameters
ConverterParams.OutputVoltage = 48;  % [V] output voltage from the solar panels

% Motion Parameters
AccelerationForce = Resist.Acceleration + Resist.Gradient + Resist.Rolling + Resist.SlippageAndSinkage;
AccelerationTorqueRequired = AccelerationForce * GenParams.WheelRadius;
TorquePerWheel = AccelerationTorqueRequired/4;


%%
% Constant Power Load Parameters
Loadparams.power = 100;   % [W]
Loadparams.MinSupV = 12;  % [V]



%% Simulation Run
%out = sim("AgPV_Model.slx",Tsim);

Daily_kWh = trapz(out.Results)/3600000


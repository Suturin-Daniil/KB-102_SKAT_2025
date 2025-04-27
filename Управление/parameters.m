clear all
% структура сделана, чтобы можно было одним объектом
% закидывать все параметры в функции
param = struct();


% физические константы
param.g = 9.81;
param.rho = 1.20;       % Зависит от температуры

% основные константы ЛА
param.m = 3.5;
param.S = 0.352;
param.c = 0.21;
param.b = 1.678;
param.A = 8;
param.e = 0.78;

% Момент инерции
param.J = [1, 0, 0;
           0, 1, 0;
           0, 0, 1];


% Аэродинамические коэффициенты
% Зависимость от угла атаки/скольжения
param.C_L0 = 0.5;
param.C_La = 5.14;
param.C_D0 = 0.025;  %0.025 (18 m/s) | 0.031 (8m/s)
param.C_Da = 2.88;
param.C_Y0 = 0;
param.C_Yb = 0;
param.C_LminD = param.C_L0;

% Зависимость от ускоренного вращения
param.C_Dq = 0;
param.C_Lq = 0;
param.C_Yp = 0;
param.C_Yr = 0;

% Зависимость от отклонения рулей
param.C_Dde = 0;
param.C_Lde = 0;
param.C_Yda = 0;
param.C_Ydr = 0;

% Для моментов сил
param.C_My0 = 0;
param.C_Mya = 0;
param.C_Myde = 0.1;
param.C_Myq = 0.1;

param.C_Mx0 = 0;
param.C_Mxb = 0;
param.C_Mxda = 0.1;
param.C_Mxdr = 0;
param.C_Mxp = 0.1;
param.C_Mxr = 0;

param.C_Mz0 = 0;
param.C_Mzb = 0;
param.C_Mzda = 0;
param.C_Mzdr = 0;
param.C_Mzp = 0;
param.C_Mzr = 0;


% Параметры винта (11x8 Aeronaut) и мотора (X2814)
param.D = 11 * 25.4 / 1000;   % диамер пропеллера в м
param.CT0 = 0.12229237;
param.CT1 = -0.05878589;
param.CT2 = -0.10176657;
param.CQ0 = 0.00650642;
param.CQ1 = 0.01143496;
param.CQ2 = -0.01978222;

param.Kv = 0.010610;
param.KQ = 0.010610;
param.R = 3.36e-2;            % Сопротивление обмотки
param.i0 = 1.2;               % Ток холостого хода
param.BatteryVoltage = 14.8;  % Номинальное напряжение батареи

param.MotorPosition = [0.2; 0; -0.005]; % Положение мотора относительно ЦМ

paramInfo = Simulink.Bus.createObject(param);
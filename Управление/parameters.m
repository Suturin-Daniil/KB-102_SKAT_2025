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

% аэродинамические коэффициенты

% Зависимость от угла атаки/скольжения
param.C_L0 = 0.5;
param.C_La = 5.14;
param.C_D0 = 0.035;
param.C_Da = 2.88;
param.C_Y0 = 0;
param.C_Yb = 0;

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

paramInfo = Simulink.Bus.createObject(param);
clear all
% структура сделана, чтобы можно было одним объектом
% закидывать все параметры в функции
param = struct();


% физические константы
param.g = 9.81;
param.rho = 1.20;       % Зависит от температуры

% основные константы ЛА
param.m = 3.5;
param.S = 1;
param.c = 1;
param.b = 1;

% аэродинамические коэффициенты

% C_D, C_L, C_Y — функции от угла атаки/скольжения
param.C_L0 = 0.5;
param.C_La = 5.14;
param.C_D0 = 0.035;
param.C_Da = 0;
param.C_Y0 = 0;
param.C_Yb = 0;

% C_Dq и C_Lq связаны с ускоренным вращением
param.C_Dq = 0;
param.C_Lq = 0;
param.C_Yp = 0;
param.C_Yr = 0;

% C_Dd и C_Ld связаны с отклонением рулей
param.C_Dde = 0;
param.C_Lde = 0;
param.C_Yda = 0;
param.C_Ydr = 0;

paramInfo = Simulink.Bus.createObject(param);
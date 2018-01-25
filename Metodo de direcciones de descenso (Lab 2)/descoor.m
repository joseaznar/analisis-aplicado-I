function [ fx, iter ] = descoor (fname, x)
% Método de descenso por coordenadas para aproximar un mínimo local de
% fname:R^n --> R, continuamente diferenciable 
% In
% fname.- cadena de caracteres on el nombre de la función a minimizar. 
% x.- vector columna de orden n que es el punto inicial. 
% Out
% xf.- vector columna de orden n con la aproximación al mínimo local.
% iter.- número de iteraciones del método. 
%
% ITAM 
% Análisis Aplicado / 25 de enero 2018
%-------------------------------------------------------------------------
n = length(x);      % dimensióndel problema
tol = 1.e-05;       % tolerancia a la norma del gradiente
maxiter = 100;      % número máximo de iteraciones
maxjiter = 6;       % número máximo de pasos hacia atras en la búsqeda de línea
c1 = 1.e-01;        % fraccíon a la pendiente negativa

fx = feval(fname,x);
gx = gradiente(fname,x);


end
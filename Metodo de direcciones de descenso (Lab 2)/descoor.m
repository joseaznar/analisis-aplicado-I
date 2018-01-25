function [ fx, iter ] = descoor (fname, x)
% M�todo de descenso por coordenadas para aproximar un m�nimo local de
% fname:R^n --> R, continuamente diferenciable 
% In
% fname.- cadena de caracteres on el nombre de la funci�n a minimizar. 
% x.- vector columna de orden n que es el punto inicial. 
% Out
% xf.- vector columna de orden n con la aproximaci�n al m�nimo local.
% iter.- n�mero de iteraciones del m�todo. 
%
% ITAM 
% An�lisis Aplicado / 25 de enero 2018
%-------------------------------------------------------------------------
n = length(x);      % dimensi�ndel problema
tol = 1.e-05;       % tolerancia a la norma del gradiente
maxiter = 100;      % n�mero m�ximo de iteraciones
maxjiter = 6;       % n�mero m�ximo de pasos hacia atras en la b�sqeda de l�nea
c1 = 1.e-01;        % fracc�on a la pendiente negativa

fx = feval(fname,x);
gx = gradiente(fname,x);


end
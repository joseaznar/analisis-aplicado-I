function [ fx ] = funhilbert5( x )
% Funci�n de energ�a: f(x) = (1/2)*x'*A*x
% donde A es la matriz de Hilbert de orden 5
% ------------------------------------------------------------------------
% matriz A

fx = (1/2)*x'A*x;

end
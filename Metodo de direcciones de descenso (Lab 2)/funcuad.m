function [ fx ] = funcuad(x)
% función cuadrática

A = [ 1 1 1 1; 1 2 3 4; 1 3 6 10; 1 4 10 20];
b = -ones(4,1);

fx = (1/2)*x'*A*x + b'*x + 1;
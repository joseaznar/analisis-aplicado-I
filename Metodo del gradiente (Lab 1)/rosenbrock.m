function [fx] = rosenbrock(x)
% Funci�n de Rosenbrock
% In
% x.- vector de columna de dimensi�n 2.
% Out
% fx.- n�mero real

fx = 100*(x(2) - x(1)*x(1))*(x(2) - x(1)*x(1)) + (1-x(1))*(1-x(1));

end
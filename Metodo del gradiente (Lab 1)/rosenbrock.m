function [fx] = rosenbrock(x)
% Función de Rosenbrock
% In
% x.- vector de columna de dimensión 2.
% Out
% fx.- número real

fx = 100*(x(2) - x(1)*x(1))*(x(2) - x(1)*x(1)) + (1-x(1))*(1-x(1));

end
function [fx] = fermat(x)
% Funci�n de Fermant-Weber
% In
% x.- vector de columna de dimensi�n 2.
% Out
% fx.- n�mero real
val1 = sqrt(x(1)*x(1) + x(2)*x(2));
val2 = sqrt((x(1)-4)*(x(1)-4) + x(2)*x(2));
val3 = sqrt((x(1) - 1)*(x(1) - 1) + (x(2) - 3)*(x(2) - 3));

fx = val1 + val2 + val3;

end
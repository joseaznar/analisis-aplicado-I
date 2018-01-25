function [g] = gradiente(fname, a)
% Se aproxima el gradiente de fname en el vector a por medio de diferencias
% hacia adelante en el vector a.
% In.
% fname.- cadena de caracteres con el nombre de la función.
% a.- vector columna de dimensión n.
% Out
% g.- vector columna de n componentes con la aproximación a las derivadas
% parciales. 
% Internamente se usa h = 10^-5
h = 1e-5;

% obtemos la dimensión en la que estamos
tam = size(a);
tam = tam(1);

% hacemos una matriz identidad auxiliar para ir obteniendo los vectores
% estandar
iden = eye(tam);

% calculamos los valores del gradiente evaluado en a para los n valores
for i=1:tam
    val1 = feval(fname,(a + h*iden(:,i)));
    val2 = feval(fname, a);
    
    g(i) =  val1 - val2;
    g(i) = g(i)/h;
end

function [H] = hessiana(fname, a)
% Calcula la matriz hessiana de la funci�n fname.m en el vector a.
% In
% fname.- cadena de caracteres con el nombre de la funci�n.
% a.- vector columna de dimensi�n n.
% Out
% H.- matriz sim�trica nxn con la aproximaci�n a la matriz hessiana.
% Internamente se usa h = 10^-5
h = 1e-5;

% obtemos la dimensi�n en la que estamos
tam = size(a);
tam = tam(1);

% hacemos una matriz identidad auxiliar para ir obteniendo los vectores
% estandar
iden = eye(tam);

% calculamos los valores de la hessiana evaluada en a para los nxn valores
for i=1:tam
    for j=1:tam
        val1 = feval(fname, a + h*iden(:,i) + h*iden(:,j));
        val2 = feval(fname, a + h*iden(:,i));
        val3 = feval(fname, a + h*iden(:,j));
        val4 = feval(fname, a);
        
        H(i,j) = val1 - val2 - val3 + val4;
        H(i,j) = H(i,j)/(h*h);
    end
end
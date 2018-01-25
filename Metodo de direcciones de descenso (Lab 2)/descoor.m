function [ xf, iter ] = descoor (fname, x)
% Método de descenso por coordenadas para aproximar un mínimo local de
% fname:R^n --> R, continuamente diferenciable 
% El método es descenso por coordenadas. 
% In
% fname.- cadena de caracteres on el nombre de la función a minimizar. 
% x.- vector columna de orden n que es el punto inicial. 
% Out
% xf.- vector columna de orden n con la aproximación al mínimo local.
% iter.- número de iteraciones del método. 
%
% ITAM 
% Análisis Aplicado / 25 de enero 2018
% ------------------------------------------------------------------------
n = length(x);      % dimensióndel problema
tol = 1.e-05;       % tolerancia a la norma del gradiente
maxiter = 100;      % número máximo de iteraciones
maxjiter = 6;       % número máximo de pasos hacia atras en la búsqeda de línea
c1 = 1.e-01;        % fraccíon a la pendiente negativa

fx = feval(fname,x);
gx = gradiente(fname,x);
iter = 0;

while( norm(gx) > tol && iter < maxiter)
    iter = iter + 1;
    % dirección de descenso
    [a, k] = max(abs(gx));
    p = zeros(n,1);
    if gx(k) > 0
        p(k) = -1;
    else
        p(k) = 1;
    end
    
    alpha = 1.0;
    xt = x + alpha*p;
    fxt = feval(fname,xt);
    jiter = 0;
    
    while (fxt > fx + alpha*(c1*gx*p) && jiter < maxjiter)
        jiter = jiter + 1;
        alpha = alpha/2;
        xt = x + alpha*p;
        fxt = feval(fname,xt);
    end
    
    x = x + alpha*p;
    gx = gradiente(fname,x);
    fx = feval(fname,x);
end
xf = x;
end
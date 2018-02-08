%Grafica1.m
fname = 'rosenbrock';
a = [1 2]';
g = gradiente(fname,a);
B = hessiana(fname,a);
c = feval(fname,a);

delta = 0.5;
x = linspace(a(1)-delta,a(1)+delta)';
y = linspace(a(2)-delta,a(2)+delta)';
Z = zeros(100); W = zeros(100); U = zeros(100); 
for k = 1:100
    ax = x(k);
    for j = 1:100
        if((x(k)-1)^2+(y(j)-2)^2 <= 1/4)
            v = [ax,y(j)]';
            Z(k,j) = feval(fname,v);
            p = v-a;
            W(k,j) = (1/2)*p'*B*p + g'*p + c;
        end
    end
end

%Graficamos
[X,Y] = meshgrid(x,y);
surfc(X,Y,Z)
hold on
mesh(X,Y,W)
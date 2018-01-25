% graficaRosenbrock
x1 = 0.5;
x2 = 1.5;
y1 = 0.5;
y2 = 1.5;

xx = linspace(x1, x2, 50)';
yy = linspace(y1, y2, 50)';

Z = zeros(50);

for i=1:50
    a = xx(i);
    for j=1:50
        Z(i,j) = rosenbrock([a, yy(j)]);
    end
end

surf(Z)

gradiente('rosenbrock', [1, 1]')
hessiana('rosenbrock', [1, 1]')

gradiente('fermat', [2, 2]')
hessiana('fermat', [2, 2]')

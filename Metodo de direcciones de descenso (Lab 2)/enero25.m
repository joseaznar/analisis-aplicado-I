% enero25.m
fname = 'rosenbrock';
x = [2 3]';

[ xf, iter] = descoor(fname,x);
% ------------------------------------------------------------------------
fname = 'funcuad';
x = 5*ones(4,1);

[ xf, iter] = descoor(fname,x);
xf
iter

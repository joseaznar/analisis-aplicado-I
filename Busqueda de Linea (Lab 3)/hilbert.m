% hilbert
close all;
w = [];
for n = 2:20
    A = hilb(n);
    w = [w cond(A)];
end

u = [2:20]; z = eps*ones(1, 19);
semilogy(u, 1./w, 'dr', u, 1./w, 'b--', u, z, 'r', 'Linewidth', 3);
title('Condicional de las matrices de Hilbert', 'Fontsize', 16)
xlabel('Dimensión de la matriz', 'Fontsize', 16);
ylabel('Condicional de la matriz', 'Fontsize', 16);
    
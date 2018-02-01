% hilbert
w = [];
for n = 2:20
    A = hilb(n);
    w = [w cond(A)];
end

u = [2:20];
semilogy(u, w, 'dr', u, w, 'b--', 'Linewidth', 3);
title('Condicional de las matrices de Hilbert', 'Fontsize', 16)
xlabel('Dimensión de la matriz', 'Fontsize', 16);
ylabel('Condicional de la matriz', 'Fontsize', 16);
    
t = 0.0:0.01:50.0
a = 1.0;
alpha = 1.0;
beta = 0.5;

for omega0 = [0.3 0.4 0.5 0.75 1.0 2.0 3.0]
  omega = omega0 + (3 * beta / 8 - 5 * alpha * alpha / 12 ./ omega0)*a*a;
  omega = omega ./ omega0 ./ omega0;

  x = a .* cos(omega .* t) - alpha .* a .* a ./ 2 ./ omega0 ./ omega0 + cos(2 .* omega .* t) .* alpha .* a .* a ./ 6 ./ omega0
  + a .* a .* a .* (alpha .* alpha ./ 3 ./ omega0 ./ omega0 + beta ./ 2) .* cos(3 .* omega .* t) ./ 16 ./ omega0 ./ omega0;

  plot (t, x);
  hold on;
endfor
axis([0,50,-6.5,1.8]);
xlabel("Temps");
ylabel("Amplitude");

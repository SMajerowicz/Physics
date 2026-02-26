epsilon=0.0:0.001:0.5;
lambda = 0.01;
xi = 0.05;
m = 0.25;
omega0 = 0.1;

aux=figure();

for f = 0.0:0.001:0.01
  b2 = (epsilon .* epsilon + lambda .* lambda + sqrt(epsilon .* epsilon + lambda .* lambda - 2.0 .* xi .* f .* f .* epsilon ./ m ./ m ./ omega0 ./ omega0)) ./ 4.0 ./ xi ./ epsilon;

  plot (epsilon,sqrt(b2));
  hold on;
endfor
axis([0,0.1,1.6,5]);
xlabel("\\epsilon");
ylabel("Amplitude^2");

saveas(aux, "./graphics/chapter_05_paragraph_29", "png");

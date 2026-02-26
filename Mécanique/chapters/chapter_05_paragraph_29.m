epsilon=-2:0.001:2;
lambda = 0.01;
xi = 0.05;
m = 0.25;
omega0 = 0.1;

aux=figure();

for f = 0.001:0.01:0.1
  b2 = ((epsilon .* epsilon + lambda .* lambda) - sqrt(epsilon .* epsilon + lambda .* lambda - 2.0 .* xi .* f .* f .* epsilon ./ m ./ m ./ omega0 ./ omega0)) ./ 4.0 ./ xi ./ epsilon;

  plot (epsilon,sqrt(b2));
  hold on;
endfor
axis([-1.5,2,-0.5,7.5]);
xlabel("\\epsilon");
ylabel("b^2");

saveas(aux, "./graphics/chapter_05_paragraph_29", "png");

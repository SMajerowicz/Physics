epsilon=0:0.01:50;
xi=2;
A=0.1;
lambda=0.05;

aux=figure();

b1 = sqrt(epsilon ./ 3 ./ xi + A ./ 2 ./ xi ./ xi + sqrt(A .* A ./ 4 ./ xi ./ xi + A .* epsilon ./ 3 ./ xi - lambda .* lambda)) ./ xi;
plot (epsilon,b1);
hold on;
b2 = sqrt(epsilon ./ 3 ./ xi + A ./ 2 ./ xi ./ xi - sqrt(A .* A ./ 4 ./ xi ./ xi + A .* epsilon ./ 3 ./ xi - lambda .* lambda)) ./ xi;
plot (epsilon,b2);
hold on;

axis([0.05,0.5,0,0.25]);
xlabel ("\\epsilon");
ylabel ("b");

saveas(aux, "./graphics/chapter_05_paragraph_29_exercice_1.png", "png");

E = 0:0.1:5;
for n = 1:1:5
  plot (E, 2 * sqrt(2*pi) * gamma(1./n) * power(E,1./n+0.5) ./ (n * gamma(1./n+0.5)));
  text(n - 0.75, 2 * sqrt(2*pi) * gamma(1./n) * power(n-0.75,1./n+0.5) ./ (n * gamma(1./n+0.5)),strcat('n=',num2str(n)));
  hold on;
endfor
axis([0, 5, 0, 70]);
xlabel ("E");
ylabel ("T(E)");

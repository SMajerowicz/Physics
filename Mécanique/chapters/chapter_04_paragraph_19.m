rho = 0:0.01:1;
for alpha = 1:0.25:3
  angle = alpha ./ rho;
  angle = angle ./ sqrt(1 + angle .* angle);
  varphi0 = acos(angle);
  plot (rho, varphi0);
  text(0.75,0.1+0.25*(alpha-0.5),strcat('alpha=',num2str(alpha)));
  hold on;
endfor
axis([0,1, 0, 1]);
xlabel ("\\rho");
ylabel ("\\phi 0");

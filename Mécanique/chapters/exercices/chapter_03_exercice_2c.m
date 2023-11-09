x = -7:0.01:7;
i = 2;
%plot (x, 4 * power(tan(0.25*x),2));
for alpha = 0.25:0.1:0.75
  plot (x, 4 * power(tan(alpha*x),2));
  %text(power(-1,i)*3, 4 * power(tan(alpha*x),2),strcat('alpha=',num2str(alpha)));
  hold on;
  if i == 2
    i = 1;
  else
    i = 2;
  endif
endfor
axis([-7, 7, 0, 10000]);
xlabel ("x");
ylabel ("U(x)");

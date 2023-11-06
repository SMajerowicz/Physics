x = -5:0.1:5;
i = 2;
for alpha = 0.25:0.1:0.75
  plot (x, -2 ./ power(cosh(alpha*x),2));
  text(power(-1,i)*3, -2 ./ power(cosh(alpha*3),2),strcat('alpha=',num2str(alpha)));
  hold on;
  if i == 2
    i = 1;
  else
    i = 2;
  endif
endfor
axis([-5, 5, -2, 0]);
xlabel ("x");
ylabel ("U(x)");

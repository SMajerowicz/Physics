x = -5:0.1:5;
for n = 1:1:5
  plot (x, power(abs(x),n));
  text(power(-1,n)*3, power(3,n),strcat('n=',num2str(n)));
  hold on;
endfor
axis([-5, 5, 0, 250]);
xlabel ("x");
ylabel ("U(x)");

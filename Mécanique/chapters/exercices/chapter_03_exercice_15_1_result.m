eta = -50:0.1:50;
for p = 2:2:20
  x = 0.5*p*(1 - power(eta,2));
  y = p*eta;
  plot (x, y);
  text(-40,-7-2*p,strcat('p=',num2str(p)));
  hold on;
endfor
axis([-50, 10, -50, 50]);
xlabel ("x");
ylabel ("y");

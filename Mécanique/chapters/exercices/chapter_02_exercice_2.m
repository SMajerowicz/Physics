x = -2:0.01:3;%U1 - U2
for v1 = 0.1:0.25:2
  plot (x, sqrt(1 + 2 * x ./ power(2,v1)));
  text(-2.2+(v1*2.5), 0.85*v1,strcat('v1=',num2str(v1)));
  hold on;
endfor
axis([-2, 3, 0, 3]);
xlabel ("U1 - U2");
ylabel ("sin(\\theta 1)/sin(\\theta 2)");

varphi = 0:0.01:60*pi;
for p = 1.1:0.2:2
  invr = sinh(varphi * sqrt(p - 1));
  x = cos(varphi) ./ invr;
  y = sin(varphi) ./ invr;
  plot (x, y);
%  text(-40,-7-2*p,strcat('p=',num2str(p)));
  hold on;
endfor
axis([-1, 10, -0.55, 2]);
xlabel ("x");
ylabel ("y");

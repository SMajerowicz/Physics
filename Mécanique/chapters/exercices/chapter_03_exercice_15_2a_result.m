varphi = 0:0.01:30*pi;
for p = 1:2:6
  invr = cos(varphi * sqrt(1 - p ./ 10));
  x = cos(varphi) ./ invr;
  y = sin(varphi) ./ invr;
  plot (x, y);
%  text(-40,-7-2*p,strcat('p=',num2str(p)));
  hold on;
endfor
axis([-5, 5, -5, 5]);
xlabel ("x");
ylabel ("y");

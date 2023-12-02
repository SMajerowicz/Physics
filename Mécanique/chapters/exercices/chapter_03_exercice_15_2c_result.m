varphi = 0:0.01:60*pi;
for p = 1.1:0.2:3
  invr = cosh(varphi * sqrt(p - 1));
  x = cos(varphi) ./ invr;
  y = sin(varphi) ./ invr;
  plot (x, y);
  hold on;
endfor
axis([-1, 1.5, -0.55, 1]);
xlabel ("x");
ylabel ("y");

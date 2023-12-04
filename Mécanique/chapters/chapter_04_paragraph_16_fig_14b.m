theta = 0:0.01:pi;
for Vv0 = 1.1:0.1:1.9
  costheta = cos(theta);
  sin2theta = sin(theta) .* sin(theta);
  costheta0 = -Vv0 * sin2theta + costheta .* sqrt(1 - Vv0 * Vv0 * sin2theta);
  plot (costheta, costheta0);
  hold on;
  costheta0 = -Vv0 * sin2theta - costheta .* sqrt(1 - Vv0 * Vv0 * sin2theta);
  plot (costheta, costheta0);
  hold on;
endfor
axis([-1.1, 1.1, -2, 1.1]);
xlabel ("cos(\\theta)");
ylabel ("cos(\\theta 0)");

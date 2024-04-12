f0 = 1;
m = 1;
omegat = 0:0.01:6*pi;
omega = 1;
%assumption alpha = beta
for alpha = 0.1:0.5:5
  beta = alpha;
  x = f0 .* (-1 .* omega .* omega .* cos(omegat) + alpha .* (omega .* omega + 2 .* alpha .* alpha) .* sin(omegat) ./ omega ...
      + exp(-1 .* alpha .* omegat) .* (omega .* omega .* cos(beta .* omegat ./ omega) - 2 .* alpha .* beta .* sin(beta .* omegat ./ omega))) ./ (m .* omega .* omega);
  plot (omegat,x);
  %text(2, g .* (2.1 .+ sin(2.1)) ./ 4 ./ power(w,2.0),strcat('w=',num2str(w)));
  hold on;
endfor
axis([0,6*pi,-200,200]);
xlabel ("t");
ylabel ("x");

f0 = 1;
m = 1;
omegat = 0:0.01:6*pi;
omega = 1;
for alpha = 0.1:0.5:5
  x = (f0 ./ (m .* (omega .* omega .+ alpha .* alpha))) .* (exp(-1 .* alpha .* omegat) - cos(omegat) + alpha .* sin(omegat) ./ omega);
  plot (omegat,x);
  %text(2, g .* (2.1 .+ sin(2.1)) ./ 4 ./ power(w,2.0),strcat('w=',num2str(w)));
  hold on;
endfor
axis([0,6*pi,-1,1.8]);
xlabel ("t");
ylabel ("x");

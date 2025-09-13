gamma = 0:0.01:3;
omega0 = 1.0;
f = 2.0;
m = 5.0;

for lambda = 0.1:0.1:1.0
  b = omega0 .* omega0 - gamma .* gamma;
  b = b .* b + 4 .* lambda .* lambda .* gamma .*gamma
  b = m .* sqrt(b);
  b = f ./ b;
  plot (gamma, b);
  text(0.25,2.0-0.75*lambda,strcat('lambda=',num2str(lambda)));
  hold on;
endfor
axis([0,3,0,2.25]);
xlabel("\\gamma");
ylabel("Amplitude");

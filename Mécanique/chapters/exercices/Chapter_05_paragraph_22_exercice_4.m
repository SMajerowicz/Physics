f0 = 1;
m = 1;
T = 0.1:0.1:20;
for omega = 0.25*pi:0.25*pi:3*pi
  a = f0 .* sqrt(power(omega .* T,2) - 2 .* omega .* T .* sin(omega .* T) + 2 .* (1 - cos(omega .* T))) ./ (m .* power(omega,3) .* T);
  a = log(a);
  plot (T,a);
  %text(2, g .* (2.1 .+ sin(2.1)) ./ 4 ./ power(w,2.0),strcat('w=',num2str(w)));
  hold on;
endfor
axis([0,20,-4.75,1]);
xlabel ("T");
ylabel ("ln(a)");

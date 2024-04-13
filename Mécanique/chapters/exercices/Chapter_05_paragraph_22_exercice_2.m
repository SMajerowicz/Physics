f0 = 1;
m = 1;
T = 0.1:0.1:20;
for omega = 0.25*pi:0.1*pi:3*pi
  a = abs(2 .* f0 .* sin(omega .* T ./ 2) ./ (m .* power(omega,3) .* T));
  plot (T,a);
  %text(2, g .* (2.1 .+ sin(2.1)) ./ 4 ./ power(w,2.0),strcat('w=',num2str(w)));
  hold on;
endfor
axis([0,20,-0.01,1.8]);
xlabel ("T");
ylabel ("a");

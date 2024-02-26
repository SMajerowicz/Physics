g = 1;
xi = 0:0.01:2*pi;
for w = 0.3:0.1:1
  x = g .* (xi .+ sin(xi)) ./ 4 ./ power(w,2.0);
  plot (xi,x);
  text(2, g .* (2.1 .+ sin(2.1)) ./ 4 ./ power(w,2.0),strcat('w=',num2str(w)));
  hold on;
endfor
axis([0,2*pi,0,15]);
xlabel ("\\xi");
ylabel ("x");

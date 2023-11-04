x = -5:0.1:5;
plot (x, -2 ./ power(cosh(0.75*x),2));
xlabel ("x");
ylabel ("U(x)");
%title ("Cas U_{0}=2 et \alpha=0.75");

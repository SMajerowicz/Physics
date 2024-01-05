mrv2 = 3;
alpha = 1;
r = 0.01:0.01:5;
for n = 3:1:10
  ueff = mrv2 ./ power(r,2) - alpha ./ power(r,n);
  plot (r,ueff);
  text(0.25 + 0.08*(n - 3),-4 + 0.5*(n - 3),strcat('n=',num2str(n)));
  hold on;
endfor
axis([0,3, -5, 5]);
xlabel ("r");
ylabel ("Ueff");

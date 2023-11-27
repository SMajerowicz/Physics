r = 0:0.01:2.5;
for alpha = 1:1:5
  plot (r, - 1 * alpha ./ r + 1 ./ (2*power(r,2)));
  text(0.5 + (alpha-1) ./ 3, -10 + (alpha-1),strcat('alpha=',num2str(alpha)));
  hold on;
endfor
axis([0, 2.5, -14, 25]);
xlabel ("r");
ylabel ("U(r)");

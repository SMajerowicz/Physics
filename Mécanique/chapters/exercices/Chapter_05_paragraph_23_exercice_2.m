l1 = 1.0;
l2 = 2.0 .* l1;
m1 = 0.1:0.1:10;
g = 1;

for factor = 0.1:0.25:1
  m2 = factor .* m1;
  w1 = g .* ((m1 + m2)(l1 + l2) + sqrt((m1 + m2) .* ((m1 + m2) .* (l1 + l2) .* (l1 + l2) - 4 .* m1 .* l1 .* l2))) ./ 2 ./ m1 ./ l1 ./ l2;
  plot (m1,w1);
  hold on;
endfor

for factor = 1:2:10
  m2 = factor .* m1;
  w1 = g .* ((m1 + m2)(l1 + l2) + sqrt((m1 + m2) .* ((m1 + m2) .* (l1 + l2) .* (l1 + l2) - 4 .* m1 .* l1 .* l2))) ./ 2 ./ m1 ./ l1 ./ l2;
  plot (m1,w1);
  hold on;
endfor

axis([0,10,0,15]);
xlabel ("m_1");
ylabel ("w^2");

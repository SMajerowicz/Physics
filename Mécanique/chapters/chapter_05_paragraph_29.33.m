epsilon=-4:0.01:6;
xi=0.2;
factor=1;

b21 = (epsilon ./2 + factor) ./ xi;
b22 = (epsilon ./2 - factor) ./ xi;

aux=figure();

plot (epsilon,sqrt(b21));
hold on;
plot (epsilon,sqrt(b22));
hold on;

text(-3.75,-0.4,"A");
text(-2,-0.4,"B");
text(2,-0.4,"C");
text(3.75,-0.4,"D");
text(3.75,3.7,"E");
text(3.75,2,"F");

axis([-4,6,0,5]);
xlabel("\\epsilon");
ylabel("b");

saveas(aux, "./graphics/chapter_05_paragraph_29.33.png", "png");

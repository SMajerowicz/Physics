thetaaxis = 0:0.01:0.7;
disttheta = cell(32,1);

function y = ddist (x)
  y = (1 + 10 .* 10 .* cos(2 .* x)) ./ sqrt (1 - 10 .* 10 .* sin(x) .* sin(x));
endfunction

idx = 1;
for theta = 0:0.01:0.7
  disttheta{idx} = quadgk("ddist",0,theta);
  idx++;
endfor
plot (thetaaxis, cell2mat(disttheta));
hold on;

function y = ddist (x)
  y = (1 + 5 .* 5 .* cos(2 .* x)) ./ sqrt (1 - 5 .* 5 .* sin(x) .* sin(x));
endfunction

idx = 1;
for theta = 0:0.01:0.7
  disttheta{idx} = quadgk("ddist",0,theta);
  idx++;
endfor
plot (thetaaxis, cell2mat(disttheta));
hold on;

function y = ddist (x)
  y = (1 + 2 .* 2 .* cos(2 .* x)) ./ sqrt (1 - 2 .* 2 .* sin(x) .* sin(x));
endfunction

idx = 1;
for theta = 0:0.01:0.7
  disttheta{idx} = quadgk("ddist",0,theta);
  idx++;
endfor
plot (thetaaxis, cell2mat(disttheta));
hold on;

function y = ddist (x)
  y = (1 + 1.5 .* 1.5 .* cos(2 .* x)) ./ sqrt (1 - 1.5 .* 1.5 .* sin(x) .* sin(x));
endfunction

idx = 1;
for theta = 0:0.01:0.7
  disttheta{idx} = quadgk("ddist",0,theta);
  idx++;
endfor
plot (thetaaxis, cell2mat(disttheta));
hold on;

axis([0.0, 0.75, 0.0, 18]);
xlabel ("\\theta");
ylabel ("distribution");

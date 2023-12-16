thetaaxis = 0:0.1:pi;
disttheta = cell(32,1);

function y = ddist (x)
  y = 0.5 .* sin(x) .* (2 .* 0.1 .* cos(x) + (1 + 0.1 .* 0.1 .* cos(2 .* x)) ./ sqrt (1 - 0.1 .* 0.1 .* sin(x) .* sin(x)));
endfunction

idx = 1;
for theta = 0:0.1:pi
  disttheta{idx} = quadgk("ddist",0,theta);
  idx++;
endfor
plot (thetaaxis, cell2mat(disttheta));
hold on;

function y = ddist (x)
  y = 0.5 .* sin(x) .* (2 .* 0.2 .* cos(x) + (1 + 0.2 .* 0.2 .* cos(2 .* x)) ./ sqrt (1 - 0.2 .* 0.2 .* sin(x) .* sin(x)));
endfunction

idx = 1;
for theta = 0:0.1:pi
  disttheta{idx} = quadgk("ddist",0,theta);
  idx++;
endfor
plot (thetaaxis, cell2mat(disttheta));
hold on;

function y = ddist (x)
  y = 0.5 .* sin(x) .* (2 .* 0.4 .* cos(x) + (1 + 0.4 .* 0.4 .* cos(2 .* x)) ./ sqrt (1 - 0.4 .* 0.4 .* sin(x) .* sin(x)));
endfunction

idx = 1;
for theta = 0:0.1:pi
  disttheta{idx} = quadgk("ddist",0,theta);
  idx++;
endfor
plot (thetaaxis, cell2mat(disttheta));
hold on;

function y = ddist (x)
  y = 0.5 .* sin(x) .* (2 .* 0.6 .* cos(x) + (1 + 0.6 .* 0.6 .* cos(2 .* x)) ./ sqrt (1 - 0.6 .* 0.6 .* sin(x) .* sin(x)));
endfunction

idx = 1;
for theta = 0:0.1:pi
  disttheta{idx} = quadgk("ddist",0,theta);
  idx++;
endfor
plot (thetaaxis, cell2mat(disttheta));
hold on;

function y = ddist (x)
  y = 0.5 .* sin(x) .* (2 .* 0.8 .* cos(x) + (1 + 0.8 .* 0.8 .* cos(2 .* x)) ./ sqrt (1 - 0.8 .* 0.8 .* sin(x) .* sin(x)));
endfunction

idx = 1;
for theta = 0:0.1:pi
  disttheta{idx} = quadgk("ddist",0,theta);
  idx++;
endfor
plot (thetaaxis, cell2mat(disttheta));
hold on;

function y = ddist (x)
  y = 0.5 .* sin(x) .* (2 .* 0.99 .* cos(x) + (1 + 0.99 .* 0.99 .* cos(2 .* x)) ./ sqrt (1 - 0.99 .* 0.99 .* sin(x) .* sin(x)));
endfunction

idx = 1;
for theta = 0:0.1:pi
  disttheta{idx} = quadgk("ddist",0,theta);
  idx++;
endfor
plot (thetaaxis, cell2mat(disttheta));
hold on;

axis([-0.05, 3.2, -0.05, 1.05]);
xlabel ("\\theta");
ylabel ("distribution");

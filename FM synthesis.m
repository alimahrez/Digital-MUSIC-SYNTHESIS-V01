
S = 44100;
N = 1.0 * S;
t = [0:N-1]/S;              % time samples: t = n/S
I = 7;                      % adjustable
x = 0.9 * sin(2*pi*400*t + I * sin(2*pi*400*t));


plot(t, x, '-', t, x, '--'), legend('x', 'y')
xlabel 't', ylabel 'x(t), y(t)', axis([0 0.01 -1 1])

% example of additive synthesis


S = 44100;
N = 0.5 * S;                % 0.5 sec
t = [0:N-1]/S;              % time samples: t = n/S
c = [0.5 0.2 0.1];          % amplitudes
f = [1 2 5] * 400;          % frequencies
x = 0;


x = 0.5 * cos(2 * pi * 400 * t) ...
+ 0.2 * cos(2 * pi * 800 * t) ...
+ 0.1 * cos(2 * pi * 2000 * t);

plot(t, x, '-', t, x, '--'), legend('x', 'y')
xlabel 't', ylabel 'x(t), y(t)', axis([0 0.01 -1 1])


%**********************************************************************

% S = 44100;
% N = 0.5 * S; % 0.5 sec
% t = [0:N-1]/S; % time samples: t = n/S
% c = 1 ./ [1:2:15]; % amplitudes
% f = [1:2:15] * 494; % frequencies
% x = 0;
% for k=1:length(c)
% x = x + c(k) * sin(2 * pi * f(k) * t);
% end
% 
% plot(t, x, '-', t, x, '--'), legend('x', 'y')
% xlabel 't', ylabel 'x(t), y(t)', axis([0 0.01 -1 1])

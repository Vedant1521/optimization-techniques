c = input('c (column): ');
alpha = input('alpha: ');
d = input('d (column): ');
beta = input('beta: ');
A = input('A: ');
b = input('b (column): ');

n = numel(c);
m = size(A,1);

% max (c'x+alpha)/(d'x+beta) s.t. Ax <= b, x >= 0, d'x+beta > 0
% Charnes-Cooper: y = t*x, t = 1/(d'x+beta)
% max c'y + alpha*t s.t. Ay - b*t <= 0, d'y + beta*t = 1, y,t >= 0
[sol,val,flag] = linprog(-[c(:);alpha], [A -b(:)], zeros(m,1), ...
                         [d(:)' beta], 1, zeros(n+1,1), []);

if flag ~= 1 || sol(end) < 1e-9
    disp('No finite optimum');
    return;
end

y = sol(1:n);
t = sol(end);
x = y/t;                    % back-transformation x = y/t
disp('x =')
disp(x)
fprintf('Optimal ratio = %.4f\n', -val)

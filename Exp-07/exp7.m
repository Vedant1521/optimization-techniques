clc
clear

syms x y
f = input('Enter objective function: ');
a = input('Enter constraint matrix: ');
b = input('Enter RHS vector: ');
xk = input('Enter initial point: ');

% the starting point must be feasible (a*x <= b, x >= 0)
if any(a*xk(:) > b + 1e-9) || any(xk(:) < 0)
    error('Initial point is infeasible. Start from a feasible point.');
end

g = gradient(f,[x y]);
g = subs(g,[x y],xk(:)');

for i = 1:50
    c = double(subs(g,[x y],xk(:)'));
    s = linprog(c,a,b,[],[],[0;0],[]);
    d = s-xk(:);
    t = f;
    p = xk(:)'+sym('al')*d';
    q = subs(t,[x y],p);
    al = fminbnd(matlabFunction(q,'Vars',sym('al')) ,0,1);
    xn = xk(:)+al*d;
    if norm(xn-xk(:)) < 1e-5
        break
    end
    xk = xn;
    g = gradient(f,[x y]);
end

disp('Optimal solution')
fprintf('x = %.4f\n',xn(1))
fprintf('y = %.4f\n',xn(2))
v = double(subs(f,[x y],xn'));
fprintf('Minimum value = %.4f\n',v)

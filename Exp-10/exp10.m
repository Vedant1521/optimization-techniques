function exp10()
syms x y
f = input('Enter objective function: ');
g = input('Enter constraint function (g <= 0): ');
x0 = input('Enter initial feasible point: ');

ff = matlabFunction(f,'Vars',{x,y});
gf = matlabFunction(g,'Vars',{x,y});

% the starting point must be strictly feasible (g < 0)
if gf(x0(1),x0(2)) >= 0
    error('Initial point must satisfy g < 0 (strictly feasible)');
end

mu = 1;
z = x0(:)';

for i = 1:10
    [z,~] = fminsearch(@(w) barrier_fun(w,ff,gf,mu), z);
    mu = mu/10;
end

disp('Optimal solution')
disp(z')
fprintf('Minimum value = %.4f\n', ff(z(1),z(2)))
end

% local function
function v = barrier_fun(w,ff,gf,mu)
    gv = gf(w(1),w(2));
    if gv >= 0
        v = Inf; % outside the feasible region
    else
        v = ff(w(1),w(2)) - mu*log(-gv);
    end
end

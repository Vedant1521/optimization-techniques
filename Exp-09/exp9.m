syms x y
f = input('Enter objective function: ');
g = input('Enter constraint function: ');
x0 = input('Enter initial point: ');

r = 1;

for i = 1:10
    p = f + r*max(0,g)^2;
    fun = matlabFunction(p,'Vars',{x,y});
    [z,v] = fminsearch(@(z) fun(z(1),z(2)),x0(:)');
    x0 = z;
    r = r*10;
end

disp('Optimal solution')
disp(x0')
fprintf('Minimum value = %.4f\n',double(subs(f,[x y],x0)))

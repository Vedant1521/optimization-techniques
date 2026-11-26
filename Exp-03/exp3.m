syms x y
f = input('Enter objective function: ');
g = input('Enter inequality constraint: ');
a = input('Enter lower limit: ');
b = input('Enter upper limit: ');

Hf = hessian(f,[x y]);
Hg = hessian(g,[x y]);

disp('Objective Hessian:')
disp(Hf)
disp('Constraint Hessian:')
disp(Hg)

[X,Y] = meshgrid(linspace(a,b,30));
c = 1;
d = 1;

for i = 1:numel(X)
    hf = double(subs(Hf,{x,y},{X(i),Y(i)}));
    hg = double(subs(Hg,{x,y},{X(i),Y(i)}));
    if any(eig(hf) < -1e-8)
        c = 0;
    end
    if any(eig(hg) < -1e-8)
        d = 0;
    end
end

if c && d
    disp('It is a convex programming problem')
else
    disp('It is not a convex programming problem')
end

syms x y

f = input('Enter the function: ');

a = input('Enter lower limit: ');
b = input('Enter upper limit: ');

H = hessian(f,[x y]);
disp('Hessian matrix is')
disp(H)

[X,Y] = meshgrid(linspace(a,b,30));

c = 1; % c = 1 : no negative eigenvalue found (H is PSD -> convex)
d = 1; % d = 1 : no positive eigenvalue found (H is NSD -> concave)

for i = 1:numel(X)
    h = double(subs(H,{x,y},{X(i),Y(i)}));
    e = eig(h);
    if any(e < -1e-8)
        c = 0;
    end
    if any(e > 1e-8)
        d = 0;
    end
end

if c && d
    disp('Function is both convex and concave (affine)')
elseif c
    disp('Function is convex')
elseif d
    disp('Function is concave')
else
    disp('Neither convex nor concave')
end

syms x

f = input('Enter function: ');
a = input('Enter interval [a b]: ');

fn = matlabFunction(f,'Vars',x);
check = true;

for k = 1:20000
    p = a(1) + (a(2)-a(1))*rand(1,2); % two random points in [a b]
    l = rand;                          % random lambda in [0,1]
    if fn(l*p(1)+(1-l)*p(2)) > l*fn(p(1)) + (1-l)*fn(p(2)) + 1e-9
        check = false;
        break;
    end
end

if check
    disp('Function is convex.');
else
    disp('Function is not convex.');
end

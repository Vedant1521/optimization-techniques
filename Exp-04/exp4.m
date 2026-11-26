syms x y l

f = input('Enter objective function: ');
g = input('Enter constraint: ');

L = f + l*g;

e1 = diff(L,x) == 0;
e2 = diff(L,y) == 0;
e3 = diff(L,l) == 0;

s = solve([e1,e2,e3],[x,y,l]);

disp('Optimal solution is')
disp([s.x,s.y])

v = subs(f,[x,y],[s.x,s.y]);
disp('Optimal value is')
disp(v)

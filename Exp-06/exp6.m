clc
clear

H = input('Enter H matrix: ');
f = input('Enter f vector: ');
A = input('Enter A matrix: ');
b = input('Enter b vector: ');
lb = input('Enter lower bound: ');

[x,val,flag] = quadprog(H,f,A,b,[],[],lb,[]);

if isempty(x) || (flag ~= 1 && flag ~= 2 && flag ~= 4)
    if flag == -2
        disp('The problem is infeasible.')
    elseif ~isempty(A)
        [xf, ~] = linprog(zeros(numel(f),1), A, b, [], [], lb, []);
        if isempty(xf) || any(~isfinite(xf))
            disp('The problem is infeasible.')
        else
            disp('No finite optimal solution found (problem may be non-convex or unbounded).')
        end
    else
        disp('No finite optimal solution found.')
    end
    return
end

disp('Optimal solution')
disp(x)

disp('Minimum value')
disp(val)

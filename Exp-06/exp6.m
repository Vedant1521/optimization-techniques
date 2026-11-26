clc
clear

H = input('Enter H matrix: ');
f = input('Enter f vector: ');
A = input('Enter A matrix: ');
b = input('Enter b vector: ');
lb = input('Enter lower bound: ');

[x,val] = quadprog(H,f,A,b,[],[],lb,[]);

disp('Optimal solution')
disp(x)

disp('Minimum value')
disp(val)

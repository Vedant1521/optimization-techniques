clc
clear

D = input('Enter D matrix: ');
l = input('Enter l vector: ');
b = input('Enter b vector: ');
Mat = input('Enter constraint matrix: ');
inq = input('Enter inq vector: ');
minimize = input('Enter 1 for minimization, 0 for maximization: ');

n = length(l);
m = length(b);

l = l(:);
b = b(:);
inq = inq(:);

if minimize == 1
    D = -D;
    l = -l;
end

count = n;

for i = 1:m
    if inq(i) > 0
        Mat(i,:) = -Mat(i,:);
        b(i) = -b(i);
    elseif inq(i) == 0
        count = count + 1;
        Mat(i,count) = -1;
        l(count,1) = 0;
        D(count,count) = 0;
    end
end

A = [-2*D Mat' -eye(count) zeros(count,m);
     Mat zeros(m,m+count) eye(m)];

B = [l; b];

disp('Matrix A')
disp(A)

disp('Matrix B')
disp(B)

%q4 
%% part i: Gauss seidel method
A = [10,1; 1,10];
b = [11;11];
tol = 1e-4;

n = size(A,1);
x = zeros(1,n);
err1 = Inf;
itr = 0;

while all(err1>tol)
    x_old = x;
    for i = 1:n
        sum = 0;
        for j = 1:i-1
            sum = sum+A(i,j)*x(j);
        end
        for j = i+1:n
            sum = sum+A(i,j)*x_old(j);
        end
        x(i) = (1/A(i,i))*(b(i)-sum);
    end
    itr = itr +1;
    y(itr,:) = x;
    err1 = abs(x_old-x);
end
    
fprintf('solution using gauss siedel method:')
disp(x)







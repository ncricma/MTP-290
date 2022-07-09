%q4

%% part ii: Gauss jacobi method 
A = [4,1,-1; 2,7,1; 1,-3,12];
b = [3;19;31];
tol = 1e-4;

n = size(A,1);
x = zeros(1,n);
err = Inf;
itr = 0;

while all(err>tol)
    xold = x;
    for i=1:n
        sum = 0;
        for j = 1:n
            if j~=i 
                sum = sum+A(i,j)*xold(j);
            end
        end
        x(i) = (1/A(i,i))*(b(i)-sum);
    end
    itr = itr +1;
    y(itr,:) = x;
    err = abs(xold-x);
end
fprintf('solution using gauss jacobi method:')
disp(x)
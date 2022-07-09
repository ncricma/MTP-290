% Q1:

A = [4 1 -1; 5 1 2; 6 1 1];
b = [-2; 4; 6];
A
[n,~] = size(A);   % this stores the number or rows
x = zeros(n,1);

V = ones(n,1);
L = diag(V);

%% part (a) 

for i=1:n-1
    % for creating lower triangular matrix
    M(i+1:n,i) = A(i+1:n,i)/A(i,i);
    L(i+1:n,i) = L(i+1:n,i) +M(i+1:n,i);
    
    % for creating upper triangular matrix
    m = A(i+1:n,i)/A(i,i);
    A(i+1:n,:) = A(i+1:n,:)-m*A(i,:);
    b(i+1:n,:) = b(i+1:n,:)-m*b(i,:);   
end

fprintf('The upper triangular matrix of A: ')
U = A;
U

fprintf('The lower triangular matrix of A: ')
L

X = L*U;
fprintf('for varification of A=LU : ')
X

%% part (b) Soving Ax = b
%solution using back substitution 
x(n,:) = b(n,:)/A(n,n);
for i = n-1:-1:1
    x(i,:) = (b(i,:)-A(i,i+1:n)*x(i+1:n,:))/A(i,i);
end
fprintf('The solution of Ax=b: ')
x

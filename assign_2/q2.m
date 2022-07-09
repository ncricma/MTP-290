% Q2:

%% Intial matrices
H3 = [1 1/2 1/3;
     1/2 1/3 1/4;
     1/3 1/4 1/5];
 
H4 = [1 1/2 1/3 1/4;
     1/2 1/3 1/4 1/5;
     1/3 1/4 1/5 1/6;
     1/4 1/5 1/6 1/7];
 
H5 = [1 1/2 1/3 1/4 1/5;
     1/2 1/3 1/4 1/5 1/6;
     1/3 1/4 1/5 1/6 1/7;
     1/4 1/5 1/6 1/7 1/8;
     1/5 1/6 1/7 1/8 1/9];

 H6 = [1 1/2 1/3 1/4 1/5 1/6;
     1/2 1/3 1/4 1/5 1/6 1/7;
     1/3 1/4 1/5 1/6 1/7 1/8;
     1/4 1/5 1/6 1/7 1/8 1/9;
     1/5 1/6 1/7 1/8 1/9 1/10;
     1/6 1/7 1/8 1/9 1/10 1/11];
 
 %% Inverse of intial matrices
I3 = inv(H3);
I4 = inv(H4);
I5 = inv(H5);
I6 = inv(H6);

%% Norms of Intial matrices
% column norm(1-norm) is the maximum absolute column sum
A = max(sum(H3));
B = max(sum(H4));
C = max(sum(H5));
D = max(sum(H6));

% row norm(infinity-norm) is the maximum absolute row sum
W = max(sum(H3,2));
X = max(sum(H4,2));
Y = max(sum(H5,2));
Z = max(sum(H6,2));

% Euclidean norm is the square root of the sum of all the squares
K = sqrt(sum(sum(H3.^2)));
L = sqrt(sum(sum(H4.^2)));
M = sqrt(sum(sum(H5.^2)));
N = sqrt(sum(sum(H6.^2)));

%% Norms of Inverse matrices
% column norm of inverse matrices
a = max(sum(I3));
b = max(sum(I4));
c = max(sum(I5));
d = max(sum(I6));

% row norm of inverse matrices
w = max(sum(I3,2));
x = max(sum(I4,2));
y = max(sum(I5,2));
z = max(sum(I6,2));

% Euclidean norm of inverse matrices
k = sqrt(sum(sum(I3.^2)));
l = sqrt(sum(sum(I4.^2)));
m = sqrt(sum(sum(I5.^2)));
n = sqrt(sum(sum(I6.^2)));

%% condition numbers
% condition number = ||A|| * ||A^(-1)||
% with respect to column norm
a1 = A*a;
b1 = B*b;
c1 = C*c;
d1 = D*d;
fprintf('Condition numbers with respect to column-norm: ')
c_n = [a1 b1 c1 d1]

% with respect to row-norm
w1 = W*w;
x1 = X*x;
y1 = Y*y;
z1 = Z*z;

fprintf('Condition numbers with respect to row-norm: ')
r_n = [w1 x1 y1 z1]

% with respect to Euclidean-norm
k1 = K*k;
l1 = L*l;
m1 = M*m;
n1 = N*n;

fprintf('Condition numbers with respect to Euclidean-norm: ')
e_n = [k1 l1 m1 n1]

% order of condition number: H3 < H4 < H5 < H6 for all the three norms.

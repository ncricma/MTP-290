% q3
% composite trapezoidal and composite simpson rule are very close to the 
% original answer of the integral.

f = @(x) 1/(1+x.^2);
a = -4;         % lower limit
b = 4;          % upper limit

%% part a : using trapezoidal rule
 h1 = (b-a)/2;
 I1 = h1*(f(a)+f(b));
 fprintf('Result using trapezoidal rule: %.4f\n',I1)

%% part b: using simpson's rule
 h2 = (b-a)/2;
 I2 = (h2/3)*(f(a) + 4*f((a+b)/4) + f(b));
 fprintf('Result using simpson rule: %.4f\n',I2)

%% part c : 
%% using composite trapezoidal rule
n = 10;         % n is the number of subintervals 
h = (b-a)/n;

s = 0.5*(f(a) + f(b));
for i = 1:n-1
    s = s + f(a + i*h);
end 
I3 = h*s;
fprintf('Result using composite trapezoidal rule: %.4f\n',I3)

%% using composite simpson's rule
% in this the value of h and n are same as in composite 
% trapezoidal method, so I have marked them as comment.
% f = @(x) 1/(1+x.^2);
% a = -4; % b = 4;
% n = 10;
% h = (b-a)/n; 
s1= f(a) + f(b);
for i=1:2:n-1
    s1 = s1 + 4*f(a+i*h);
end

for j=2:2:n-2
    s1 = s1 + 2*f(a+j*h);
end
I4 = (h/3) * s1;
fprintf('Result using composite simpson rule: %.4f\n',I4)

%% part d : two point Gauss-Legendre quadrature 

F = @(t) f(((b-a)*t + (b+a))/2);
w0 = 1; w1 = 1;
x0 = 1/sqrt(3);
x1 = -1/sqrt(3);
I5 = ((b-a)/2)*(w0*F(x0) + w1*F(x1));
fprintf('Result using two point Gauss-Legendre quadrature is: %.4f\n',I5) 







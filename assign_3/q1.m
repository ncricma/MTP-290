% q1: 
%% Runge kutta method of order 4

h = 0.01;
X = 1:h:2;
n = length(X);
Y = zeros(1,n);
Y(1)=1;
f = @(x,y) ((y/x) - (y/x).^2);

for i=1:n-1
    k1=h*f(X(i),Y(i));
    k2=h*f(X(i)+h/2,Y(i)+k1/2);
    k3=h*f(X(i)+h/2,Y(i)+k2/2);
    k4=h*f(X(i)+h,Y(i)+k3);
    k=(1/6)*(k1+2*k2+2*k3+k4);
    Y(i+1)=Y(i)+k;
end
A = Y(n);
fprintf('solution using Runge kutta method of order 4: %.4f\n', A) 
plot(X,Y);

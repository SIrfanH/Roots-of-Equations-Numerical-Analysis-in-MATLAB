%Newton Raphson
clear;
clc;
% This program Finds the approximate root of F(x)=0.7-x+0.3sin(x)
% Using Newton Raphson Method. The variables used in this program are (Epsilon, X1,g,q,n,X2,error,iteration)
% Epsilon is termination condition, g is symbolic form of the function, q is the derivative of the function.
% n is the value of derivative of function at x=x1, "error" is used for comparison with epsilon
% and lastly "iterasyon" is used for calculating iteration

disp('F(x)=0.7-x+0.3sin(x)'); 					% output
f=@(x) 0.7-x+0.3.*sin(x);     					% anonymous form of the function
syms x;
g=0.7-x+0.3*sin(x);         					% Symbolic form of the function
x1=input('Enter your initial guess:'); 			% To get first estimate value from user input
epsilon=input('Enter the value of Epsilon:'); 	% To get epsilon value from user input
q=diff(g);            							% To get derivative of the function
n=vpa(subs(q,x,x1)); 							% Calculate the value of derivative at x=x1 
x2=x1-(f(x1)/n);     							% Calculate new estimate value using Newton Raphson formula
error=abs(x2-x1);   							% difference, used for comparison with epsilon
iteration=1;       								% used for keeping track of steps
fprintf('x1\t\t\t\t\tx2\t\t\t\terror\t\t\t\titeration\n');
fprintf('%f\t\t%f\t\t\t%f\t\t\t\t%d\n',x1,x2,error,iteration);

while(error>epsilon)  							% Calculations start here
    x1=x2;          
    n=vpa(subs(q,x,x1));
    x2=x1-(f(x1)/n);
    error=abs(x2-x1);
    iteration=iteration+1;
    fprintf('%f\t\t%f\t\t\t%f\t\t\t\t%d\n',x1,x2,error,iteration);
end
iteration
x2

figure;
fplot(f,[-2,2]);      % plots graph of the function f between interval -2 and 2
xlabel('X');
ylabel('F(x)');
grid on;
hold on;
fplot(x2,f(x2),'or'); % Cirles around the point (x2,f(x2) with red color
hold off;

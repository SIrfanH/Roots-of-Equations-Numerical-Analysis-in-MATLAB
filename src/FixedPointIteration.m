
%This program finds root of the function f(x)=2x-1-2sin(x) using Fixed Point Iteration
%'x0' is used as the first value guessed by the user, 'Epsilon' is stopping
%condition, 'error' is used as the absolute value of difference between two
%values of 'x', x2 is used as the new value of 'x0' which is found using
%h(x), 'iteration' is used for counting every steps.

clear;
clc;


disp('f=2*x-1-2*sin(x)'); %diplays the function
disp('g(x)= x');    
disp('h(x)= (1+2*sin(x))/2');  %Just for showing how i separated the function
x0=input('Enter your initial guess:'); %x0 is our first value
h=@(x)(1+2*sin(x))/2;  % h(x)
epsilon=input('Enter the value of epsilon');         %Stopping Condition
g=@(x) x;
x2=h(x0);              %x2 our new value
iteration=1;           % for counting steps
error=abs(x2-x0);      %Difference of x values
fprintf('x0\t\t\t\tx2\t\terror\titeration\n')
fprintf('%f\t%f\t%f\t%d\n',x0,x2,error,iteration);

while(error>epsilon)
     x0=x2;
     x2=h(x0);
     iteration=iteration+1;
     error=abs(x2-x0);
     fprintf('%f\t%f\t%f\t%d\n',x0,x2,error,iteration);
     
end

iteration
x2

figure;
fplot(h,[-5,5]);           %plots graph of h(x)
grid on;
hold on;
fplot(g,[-5,5],'g');       %and g(x) at the same xy-plane 
hold on;
plot(x2,h(x2),'or');       %cicles intersection point
hold off



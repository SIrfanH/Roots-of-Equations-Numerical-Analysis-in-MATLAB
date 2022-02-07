%Regula Falsi
clear;
clc;

% This Program finds root of the equation F(x)=2x(x^2-1) using Regula Falsi(False Position) Method and is written by
% The variables which are used in this program are as follows: 'a' is used as the starting value of our closed interval, 
% 'b' is used as the ending value of our interval, 'epsilon' the termination condition, 'c' is used as the new
% value for any of 'a' or 'b', 'error' is just for comparison with epsilon,
% iteration is used for counting our steps, and lastly 'n' is used for storing old value of 'c'.

disp('F(x)=2x(x^2-1)');  %output
f=@(x) 2.*x.*(x.^2-1);    %our function in anonymous form
a=input('Enter the starting value of our interval(Most Effective value is 0.5):'); %gets value of 'a' from user
b=input('Enter the ending value of our interval(Most Effective Value is 1.5):'); %gets value of 'b' from user
epsilon=input('Enter the value of Epsilon:'); %gets value of epsilon from user
c=(b*f(a)-a*f(b))/(f(a)-f(b)); %evaluates 'c' using regula falsi formula
error=1; %for comparing with epsilon
iteration=1;  %for counting after how many steps the computer could find the root
fprintf('a\t\t\tf(a)\t\t\tb\t\t\tf(b)\t\tc\t\t\tf(c)\t\terror\t\titeration\n'); %for printing as table
fprintf('%f\t%f\t%f\t%f\t%f\t%f\t\t%f\t\t%d\n',a,f(a),b,f(b),c,f(c),error,iteration);% for printing as table

while error>epsilon || f(c)>epsilon %evaluation starts her, although we already have some values for some of variables 
    if f(a)*f(c)>0          %for deciding which one gets the new value of 'c'
        a=c;
    else 
        b=c;
    end
    n=c;                   %for storing the old value of 'c' just to find 'error'
    c=(b*f(a)-a*f(b))/(f(a)-f(b));  %Regula Falsi formula again!
    error=abs(c-n);             %this is why we used 'n'
    iteration=iteration+1;      %for counting steps
    i=i+1;
    fprintf('%f\t%f\t%f\t%f\t%f\t%f\t\t%f\t\t%d\n',a,f(a),b,f(b),c,f(c),error,iteration);
end
iteration
c
xz=fzero(f,1);     %finds zero of the function
figure;           
fplot(f,[-2,2]);   %plots graph of the function between the interval -2,2
hold on;
plot(xz,0,'or');   %circles the zero of the function on the same graph with red
grid on;
xlabel('x');
ylabel('f(x)');
hold off;

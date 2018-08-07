f=@(x)1/(1+x^2); %Change here for different function
a=0;b=4; %Given limits
h=1;
p=0;
n=(b-a)/h; %Number of intervals
i = a;

for counter=0:n
p=p+1;
x(p)=i;
y(p)=1/(1+i^2); %Change here for different function
i= i+h;
end

l=length(x);
x
y
answer=(h/2)*(y(1)+2*y(2)+2*y(3)+2*y(4)+y(5));
disp('In trapezodial while h = 1 the answer is')
answer %The answer while h = 1

realValue = 1.3258;
error = abs(answer - realValue);
error

relativeTrueError= error/realValue*100;
relativeTrueError

h=0.5;
p=0;
n=(b-a)/h; %Number of intervals
i = a;

for counter=0:n
p=p+1;
x(p)=i;
y(p)=1/(1+i^2); %Change here for different function
i= i+h;
end

l=length(x);
x
y
answer2=(h/2)*(y(1)+2*y(2)+2*y(3)+2*y(4)+2*y(5)+2*y(6)+2*y(7)+2*y(8) +y(9));
disp('In trapezodial while h = 0.5 the answer is')
answer2 %The answer while h = 0.5

error = abs(realValue - answer2);
error

relativeTrueError= error/realValue*100;
relativeTrueError
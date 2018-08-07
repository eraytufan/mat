x=1;
imax = 3;

for i=1:imax
    
    y(i)= x(i)*cos(pi*x(i)/180)-sin(pi*x(i)/180);
    x(i+1)= x(i)-(y(i)/(-x(i)*sin(pi*x(i)/180)));
    trueerror = abs(x(i+1)-x(i));
    relativeapproximateerror(i)=trueerror/x(i+1)*100;
    
end

subplot(211),plot(relativeapproximateerror)
subplot(212),plot(x)


relativeapproximateerror

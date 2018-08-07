%quadratic interpolation
x   =   [4 8 12 16 20];%temperature
y   =   [1000.7794 1000.6427 1000.2805 999.7165 998.9700];%density
N   =   length(x)-1;
% The unknowns are 3*N with ao=0 "Linear Spline"
% Filling Matrix from point matching
V   =   [0;zeros(2*N,1);zeros(N-1,1)];
Z   =   zeros(length(V),length(V));
j=1;
f=1;
for i=2:2:2*N    
    Z(i,f:f+2)=[x(j)^2 x(j) 1];
    V(i)=y(j);
    j=j+1;
    Z(i+1,f:f+2)=[x(j)^2 x(j) 1];  
    V(i+1)=y(j);
    f=f+3;
end
% Using smoothing condition filling the matrix
j=1;
l=2;
for i=2*N+2:3*N
    
    Z(i,j:j+1)=[2*x(l) 1];
    Z(i,j+3:j+4)=[-2*x(l) -1];
    j=j+3;
    l=l+1;
end
Z(1,1)=1;
Coeff=Z\V;
j=1;
hold on;
for i=1:N
    curve=@(l) Coeff(j)*l.^2+Coeff(j+1)*l+Coeff(j+2);
    subplot(211),ezplot(curve,[x(i),x(i+1)]);
    hold on
    j=j+3;
end
grid on;
xlim([min(x)-2 max(x)+2]);
ylim([min(y)-2 max(y)+2]);
subplot(211),xlabel('x');
subplot(211),ylabel('y');
subplot(211),title('Quadratic Spline')





%The other values of T (6, 10 ,14, 18) in the second plot

x   =   [6 10 14 18];%temperature
y   =   [1000.74088 1000.4882 1000.0224 999.3650];%density
N   =   length(x)-1;
% The unknowns are 3*N with ao=0 "Linear Spline"
% Filling Matrix from point matching
V   =   [0;zeros(2*N,1);zeros(N-1,1)];
Z   =   zeros(length(V),length(V));
j=1;
f=1;
for i=2:2:2*N    
    Z(i,f:f+2)=[x(j)^2 x(j) 1];
    V(i)=y(j);
    j=j+1;
    Z(i+1,f:f+2)=[x(j)^2 x(j) 1];  
    V(i+1)=y(j);
    f=f+3;
end
% Using smoothing condition filling the matrix
j=1;
l=2;
for i=2*N+2:3*N
    
    Z(i,j:j+1)=[2*x(l) 1];
    Z(i,j+3:j+4)=[-2*x(l) -1];
    j=j+3;
    l=l+1;
end
Z(1,1)=1;
Coeff=Z\V;
j=1;
hold on;
for i=1:N
    curve=@(l) Coeff(j)*l.^2+Coeff(j+1)*l+Coeff(j+2);
    subplot(212),ezplot(curve,[x(i),x(i+1)]);
    hold on
    j=j+3;
end
grid on;
xlim([min(x)-2 max(x)+2]);
ylim([min(y)-2 max(y)+2]);
subplot(212),xlabel('x');
subplot(212),ylabel('y');
subplot(212),title('Quadratic Spline')





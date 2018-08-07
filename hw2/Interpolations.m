

x=[1975  1980  1985  1990];
y=[72.8 74.2 75.2 76.4];%Western data
y2=[70.2 70.2 70.3 71.2];%Eastern data
xin=[1970 1983 1988]; % interpolated locations
disp('Western Europe')
disp('The x data')
x
disp('The y data')
y
disp('  ')


n=length(x);
m=3;%degree number
pp=polyfit(x,y,m);
yin=polyval(pp,xin);
% This is for plotting the interpolating polynomial
xplot=x(1):(x(n)-x(1))/10000:x(n);
yplot=polyval(pp,xplot);


disp('x values to be interpolated')
xin
disp('y values at the xin values')
yin
subplot(211),plot(x,y,'o','MarkerSize',10,'MarkerEdgeColor','b','MarkerFaceColor','b')
hold on
subplot(211),plot(xin,yin,'o','MarkerSize',10,'MarkerEdgeColor','k','MarkerFaceColor','k')
hold on
subplot(211),plot(xplot,yplot,'LineWidth',2),title('Western Europe')
hold off
disp('  ')


%Western Europe

disp('Eastern Europe')
disp('The x data')
x
disp('The y data')
y2
disp('  ')


n=length(x);
m=3;%degree number
pp=polyfit(x,y2,m);
yin=polyval(pp,xin);
% This is for plotting the interpolating polynomial
xplot=x(1):(x(n)-x(1))/10000:x(n);
yplot=polyval(pp,xplot);


disp('x values to be interpolated')
xin
disp('y values at the xin values')
yin
subplot(212),plot(x,y2,'o','MarkerSize',10,'MarkerEdgeColor','b','MarkerFaceColor','b')
hold on
subplot(212),plot(xin,yin,'o','MarkerSize',10,'MarkerEdgeColor','k','MarkerFaceColor','k')
hold on
subplot(212),plot(xplot,yplot,'LineWidth',2),title('Eastern Europe')
hold off
disp('  ')


%Western europe interpolation 1995

x=[1970 1975  1980  1985  1990];
y=[71.8 72.8 74.2 75.2 76.4];%Western data
y2=[69.6 70.2 70.2 70.3 71.2];%Eastern data

xin=[1995]; % interpolated locations

pp=polyfit(x,y,m);
yin=polyval(pp,xin);



disp('Interpolation of western europe in 1995')
yin

%Eastern europe
pp=polyfit(x,y2,m);
yin=polyval(pp,xin);

disp('Interpolation of eastern europe in 1995')
yin

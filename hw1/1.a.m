x=-pi:0.1:pi;
realsin = sin(x)
subplot(311),plot(realsin)

ypozitif = 0;
ynegatif = 0;
ynegatif2 = 0;

iterpoz = 4;
iterneg = 3;

for i=1:iterpoz
    ypozitif = ypozitif + x.^((4*i-3))/factorial(4*i-3);
end

for i=1:iterneg
    ynegatif = ynegatif - x.^((4*i-1))/factorial(4*i-1);
end

answer1 = ypozitif + ynegatif
subplot(312),plot(answer1)

iterneg = 4
for i=1:iterneg
    ynegatif2 = ynegatif2 - x.^((4*i-1))/factorial(4*i-1);
end

answer2 = ypozitif + ynegatif2
subplot(313),plot(answer2)
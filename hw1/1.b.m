x=1.4*pi;

ypozitif = 0;
ynegatif = 0;

iterpoz = 4;
iterneg = 3;

for i=1:iterpoz
    ypozitif = ypozitif + x.^((4*i-3))/factorial(4*i-3);
end

for i=1:iterneg
    ynegatif = ynegatif - x.^((4*i-1))/factorial(4*i-1);
end


answer = ypozitif + ynegatif
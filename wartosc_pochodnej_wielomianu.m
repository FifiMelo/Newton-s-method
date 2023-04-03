function[y] = wartosc_pochodnej_wielomianu(wielomian ,x)
% ta funkcja oblicza wartosc pochodnej wielomianu w 
% konkretnym
% punkcie (punktach) x
% wielomian W nalezy podac jako pionowy wektor
% (wiecej na ten temat w main.m)
% a x powinien byc po prostu liczba
% funkcja jest zwektoryzowana
n = size(wielomian);
n = n(1);
y = zeros(1,width(wielomian));
for i=n:-1:2
    y = y .* x;
    y = y + wielomian(i,:) * (i - 1);
end
end
function[y] = metoda_newtona(wielomian, x0, eps, max_iters)
% ta funkcja wyznacza miejsce zerowe wielomianu
% za pomocą metody newtona,
% gdzie x0 to przyblizenie poczatkowe 
% funkcja zwektoryzowana
if nargin == 2
    eps = 1e-5;
    max_iters = 100;
end
if nargin == 3
    max_iters = 100;
end
i = 0;
while any(abs(wartosc_wielomianu(wielomian, x0)) > eps)

    % sprawdzamy czy przypadkiem nie jesteśmy w miejscu gdzie pochodna jest
    % równa 0
    if any(wartosc_pochodnej_wielomianu(wielomian, x0) == 0)
        error("Get to the point of derivative 0")
    end

    x0 = x0 - (wartosc_wielomianu(wielomian, x0) ./ wartosc_pochodnej_wielomianu(wielomian, x0));
    
    i = i + 1;

    % sprawdzamy czy nie wykonaliśmy już za dużo kroków
    if i > max_iters
        error("To many iterations:" + i)
    end
end
y = x0;
end
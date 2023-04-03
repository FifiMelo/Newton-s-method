function[y] = metoda_newtona_tablicujaca(wielomian, x0,eps,max_iters)
% ta funkcja wyznacza miejsce zerowe wielomianu
% za pomocą metody newtona,
% gdzie x0 to przyblizenie poczatkowe 
% (lub kilka przyblizen poczatkowych)
% a także zapisuje w macierzy kolejne przybliżenia

% y jest macierzą odpowiedzi, ma szerokość taką jak x0
% jeszcze nie wiemy jakiego jest rozmiaru, gdyż jest to zależne od ilości
% iteracji
% parametr eps mówi jak bardzo wartość funkcji w naszym przybliżeniu może
% różnić się od 0
% parametr max_iters mówi ile iteracji możemy maksymalnie wykonać (po
% przekroczeniu parametru uznajemy, że metoda nie jest zbieżna)
if nargin == 2
    eps = 1e-5;
    max_iters = 100;
end
if nargin == 3
    max_iters = 100;
end
y(1,:) = x0;
i = 2;
while any(abs(wartosc_wielomianu(wielomian, y(i-1,:))) > eps)

    % sprawdzamy czy przypadkiem nie jesteśmy w miejscu gdzie pochodna jest
    % równa 0
    if any(wartosc_pochodnej_wielomianu(wielomian, x0) == 0)
        error("Get to the point of derivative 0")
    end

    y(i,:) = y(i-1,:) - wartosc_wielomianu(wielomian, y(i-1,:)) ./ wartosc_pochodnej_wielomianu(wielomian, y(i-1,:));
    
    i = i + 1;

    % sprawdzamy czy nie wykonaliśmy już za dużo kroków
    if i > max_iters
        error("To many iterations: " + max_iters)
    end
end
end
% przykład szósty
% w tym przykładzie będziemy badać jak zmienia się różnica pomiędzy
% odległościami od prawdziwego miejsca zerowego z kolejnymi iteracjami

% w tym miejscu wybieramy stopien wielomianow
stopien = 5;

% w tym miejscu wybieramy punkt początkowy
x0 = 0;

% w tym miejscu wybieramy liczbę przykładów
liczba_przykladow = 10;



leg = repelem("",length(x2));
hold on
for i=1:liczba_przykladow
    
    [wielomian, zeros] = test_generator(1,stopien,2);
    x2 = metoda_newtona_tablicujaca(wielomian,x0,1e-4);
    disp(x2 - x2(length(x2)))
    if any(abs(x2(length(x2)) - zeros) < 1e-4)
        disp("Znaleziono prawdziwe miejsce zerowe")
    else
        disp("Prawidzwe miejsca zerowe: "+zeros)
        disp("Znalezione miejsce zerowe: "+x2(length(x2)))
    end
    points = diff(x2 - x2(length(x2)));
    plot3(linspace(1,length(x2) - 1, length(x2) - 1), points,repelem(i, length(x2) - 1),":o");
    leg(i) = "Wielomian: " + wyswietl_wielomian(wielomian) + " miejsce zerowe: " + x2(length(x2));
end
title("Porównanie różnicy błędów pomiędzy kolejnymi przybliżeniami")

ylabel("bład")
xlabel("Iteracja")

legend(leg)
grid on
hold off
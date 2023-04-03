% przykład drugi

% w tym miejscu wybieramy stopien wielomianow
stopien = 3;

% w tym miejscu wybieramy punkt początkowy
x0 = 0;

% w tym miejscu wybieramy liczbę przykładów
liczba_przykladow = 8;



leg = repelem("",length(x2));
hold on
for i=1:liczba_przykladow
    
    [wielomian, zeros] = test_generator(1,stopien,2);
    x2 = metoda_newtona_tablicujaca(wielomian,x0);
    if any(abs(x2(length(x2)) - zeros) < 1e-4)
        disp("Znaleziono prawdziwe miejsce zerowe")
    else
        disp("Prawidzwe miejsca zerowe: "+zeros)
        disp("Znalezione miejsce zerowe: "+x2(length(x2)))
    end
    plot3(linspace(1,length(x2), length(x2)), x2 - x2(length(x2)),repelem(i, length(x2)),":o");
    leg(i) = "Wielomian: " + wyswietl_wielomian(wielomian) + " miejsce zerowe: " + x2(length(x2));
end
title("Porównanie prędkość zbieżności metody newtona dla różnych funkcji")

ylabel("bład")
xlabel("Iteracja")

legend(leg)
grid on
hold off
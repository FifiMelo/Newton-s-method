% przyklad trzeci
% w tym przykładzie porównamy jak szybko zbieżna jest metoda newtona w
% zależności od krotności miejsca zerowego

% w tym miejscu wybieramy przybliżenie początkowe
x0 = 3;

% krotnosc miejsca zerowego: 2
wielomian2 = [0;0;1];

% krotność miejsca zerowego: 3
wielomian3 = [0;0;0;1];

% krotnosc miejsca zerowego: 4
wielomian4 = [0;0;0;0;1];

% krotnosc miejsca zerowego: 5
wielomian5 = [0;0;0;0;0;1];

przyblizenia2 = metoda_newtona_tablicujaca(wielomian2, x0);
przyblizenia3 = metoda_newtona_tablicujaca(wielomian3, x0);
przyblizenia4 = metoda_newtona_tablicujaca(wielomian4, x0);
przyblizenia5 = metoda_newtona_tablicujaca(wielomian5, x0);


hold on
linsp = linspace(1,length(przyblizenia2), length(przyblizenia2));
plot(linsp, przyblizenia2,":o")

linsp = linspace(1,length(przyblizenia3), length(przyblizenia3));
plot(linsp, przyblizenia3,":o")

linsp = linspace(1,length(przyblizenia4), length(przyblizenia4));
plot(linsp, przyblizenia4,":o")

linsp = linspace(1,length(przyblizenia5), length(przyblizenia5));
plot(linsp, przyblizenia5,":o")

legend("2-krotne", "3-krotne", "4-krotne", "5-krotne")
title("Prędkości zbieżności metody Newtona w zależności od krotności miejsca zerowego")
ylabel("bład")
xlabel("Iteracja")
hold off
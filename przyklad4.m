% przykład 4
% w tym przykładzie porównamy czasy działania metody newtona oraz
% wbudowanej metody do znajdowania miejsc zerowych (roots)
% ponieważ metoda newtona nie znajduje wszystkich miejsc zerowych, a metoda
% roots - wszystkie musimy stworzyć warunki w których obie metody są
% porównywalne. Będziemy tutaj używali funkcji kwadratowych z dwoma
% miejscami zerowymi.

% w tym miejscu wybieramy liczbę przykładów
liczba_przykladow = 6;

% w tym miejscu wyberamy ile testów ma być w każdym przykładzie
liczba_testow_w_przykladzie = 10000;

for i=1:liczba_przykladow
    time = 0;
    [wielomian, miejsca_zerowe] = test_generator(liczba_testow_w_przykladzie,2,2);
    tic;
    metoda_newtona(wielomian, min(miejsca_zerowe) - 10);
    metoda_newtona(wielomian, max(miejsca_zerowe) + 10);
    time = time + toc;
    disp("Czas wykonania dla metody Newetona wynosi " + time +"s")
    tic;
    for j=1:liczba_testow_w_przykladzie
        roots(flip(wielomian(:,j)));
    end
    time = toc;
    disp("Czas wykonania dla metody wbudowanej roots wynosi " + time +"s")
end

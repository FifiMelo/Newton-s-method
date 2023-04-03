% przykład pierwszy
% metoda newtona jest zbieżna w 1 kroku dla funkcji liniowych
% w celu prezentacji tego faktu wygenerujemy funkcje liniowe, 
% każda z innym miejscem zerowym


for i=1:6
[wielomian, x1] = test_generator(1,1,1);

% następnie wylosujemy punkt startowy
x0 = randn(1,1);
x2 = metoda_newtona(wielomian,x0,1e-5,1);
disp("Prawdziwe miejsce zerowe funkcji wynosi " + x1)
disp("Miejsce zerowe funkcji wyliczone metodą newtona wynosi "+x2)
end

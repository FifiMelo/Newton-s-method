function napis = wyswietl_wielomian(wielomian)
% ta funkcja zamienia wielomian (o postaci w jakiej przechowujemy
% wielomiany wiecej napisano w funkcji main)
% i zamienia je na napisy
% na przklad [1;0;4;7] -> 7x^3 + 4x^2 + 1



wielomian = flip(wielomian);

if length(wielomian) > 2
switch wielomian(1)
    case 1
        napis = "x^"+(length(wielomian) - 1);
    case -1
        napis = "-x^"+(length(wielomian) - 1);
    case 0
        napis = "";
    otherwise
        napis = wielomian(1) + "x^"+(length(wielomian) - 1);
end

for i = 2:length(wielomian) - 2
    switch wielomian(i)
    case 1
        napis = napis + " + x^"+(length(wielomian) - i);
    case -1
        napis = napis + " - x^"+(length(wielomian) - i);
    case 0

    otherwise
        if wielomian(i) > 0
            napis = napis + " + " + wielomian(i) + "x^"+(length(wielomian) - i);
        else
            napis = napis + " - " + (wielomian(i)*(-1)) + "x^"+(length(wielomian) - i);
        end
    end
end

switch wielomian(length(wielomian) - 1)
    case 1
        napis = napis + " + x";
    case -1
        napis = napis + " - x";
    case 0

    otherwise
        if wielomian(length(wielomian) - 1) > 0
            napis = napis + " + " + wielomian(length(wielomian) - 1) + "x";
        else
            napis = napis + " - " + (wielomian(length(wielomian) - 1) * (-1)) + "x";
        end
end
if wielomian(length(wielomian)) > 0
    napis = napis + " + " + wielomian(length(wielomian));
if wielomian(length(wielomian)) < 0
    napis = napis + " - " + (wielomian(length(wielomian)) * (-1));

end
end
end

if length(wielomian) == 2
switch wielomian(length(wielomian) - 1)
    case 1
        napis = "x";
    case -1
        napis = "x";
    case 0

    otherwise
            napis = wielomian(length(wielomian) - 1) + "x";
end

if wielomian(length(wielomian)) > 0
    napis = napis + " + " + wielomian(length(wielomian));
if wielomian(length(wielomian)) < 0
    napis = napis + " - " + (wielomian(length(wielomian)) * (-1));

end
end
end

if length(wielomian) == 1
    napis = string(wielomian(1));
end

end
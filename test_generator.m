function [polynomials, roots] = test_generator(test_number, degree, number_of_roots, sigma, mi, sigma_y)


if nargin < 6
    sigma_y = 2;
end
if nargin < 5
    mi = 0;
end
if nargin < 4
    sigma = 3;
polynomials = zeros(degree + 1, test_number);
if number_of_roots > degree
    error("Number of roots cannot be greather than degree of polynomial")
end
roots = randn(number_of_roots, 1) * sigma * sigma + mi;
for i=1:test_number
    nodes_x = randn(degree - number_of_roots + 1,1) * sigma * sigma + mi;
    nodes_y = abs(randn(degree - number_of_roots + 1,1) * sigma_y * sigma_y);
    random_side = (randi(2)-1) * 2 - 1;
    for j=1:(degree - number_of_roots + 1)
        nodes_y(j) = nodes_y(j) * (-1)^sum(roots > nodes_x(j)) * random_side;
    end
    polynomial = polyfit([roots; nodes_x]',[zeros(number_of_roots,1); nodes_y]',degree);
    polynomials(:,i) = flip(polynomial);
end
end
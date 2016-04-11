function [x] = degrau(n)
    size_n = length(n);
    deg = zeros(1,size_n);
    deg ((-n(1)+1):end) = 1;
    x = deg;
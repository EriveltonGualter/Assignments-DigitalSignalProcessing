function [x] = impulso(n)
    size_n = length(n);
    imp = zeros(1,size_n);
    imp (-n(1)+1) = 1;
    x = imp;
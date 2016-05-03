function h = passa_baixa( Deltaf, fc, fs)
    
    N = 1.82*pi / ( 2*pi*Deltaf/fs);
    N = ceil(N);
    
    if rem(N,2) == 0 
        N = N + 1;
    end
    
    n = -(N-1)/2:1:(N-1)/2;
    n(n==0) = 1e-10;
    
    h = (1/pi)*( sin(n.*2*pi*fc/fs) ./ (n.*pi)_);
    
end

%% ceil(A) :  This MATLAB function rounds the elements of A to the nearest 
%           integers greater than or equal to A.

%% rem(X,Y) : This MATLAB function returns the remainder after division of X by Y.
%               R = rem(X,Y)
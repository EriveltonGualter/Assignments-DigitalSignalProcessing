n=-3:100;
y = zeros(1,length(n));
x = impulso(n);

for pos=find(n==0):length(n)
    y(pos) = x(pos)+5*x(pos-1)+x(pos-3)+0.5*y(pos-1)-0.8*y(pos-2);
end

stem(n,y)
function newsum = my_exp(x)
oldsum = 0;
newsum = 1;
term = 1;
n = 0;
while newsum ~= oldsum % Iterate until next term is negligible
    n = n + 1;
    term = term * x/n; % x^n/n! = (x^{n-1}/(n-1)!) * x/n
    oldsum = newsum;
    newsum = newsum + term;
end
end
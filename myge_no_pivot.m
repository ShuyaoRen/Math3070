% Gaussian elimination without pivoting
n = 2;
A = [1e-20 1; 1 1];
b = [1;2];
for j=1:n-1
    for i=j+1:n
        mult = A(i,j)/A(j,j);
        % A(i,:) = A(i,:) - mult*A(j,:); % less efficient
        A(i,j:n) = A(i,j:n) - mult*A(j,j:n); % more efficient
        b(i) = b(i) - mult*b(j);
    end
end


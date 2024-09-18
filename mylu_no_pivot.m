function [L,U] = mylu_no_pivot(A)
% mylu_no_pivot: LU factorization without pivoting
[m, n] = size(A);
if m ~= n
    error('Input matrix must be square for LU factorization.');
end
for j = 1:n-1
    for i = j+1:n
        mult = A(i,j)/A(j,j);
        A(i,j+1:n) = A(i,j+1:n) - mult*A(j,j+1:n);
        A(i,j) = mult;
    end
end
% the strict lower part of A becomes the strict lower part of L
L = tril(A, -1)+eye(size(A));
% the upper part of A becomes U
U = triu(A);
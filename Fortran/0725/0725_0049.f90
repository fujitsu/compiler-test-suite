INTEGER A(2,3), B(3,2)
INTEGER AB(2,2)
PARAMETER (A = RESHAPE ( (/ 1,2,2,3,3,4 /), (/ 2,3 /)))
PARAMETER (B = RESHAPE ( (/ 1,2,3,2,3,4 /), (/ 3,2 /)))
AB = MATMUL(A(:,:),B(:,:))
PRINT *,AB
END

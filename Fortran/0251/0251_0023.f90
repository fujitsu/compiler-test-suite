REAL :: A(5),B(5),C(5)
A=2
B=3
DO CONCURRENT (I = 1:5)
BLOCK
REAL :: T
T = A(I) + B(I)
C(I) = T + SQRT(T)
END BLOCK
END DO

if(any(int(C)/=7)) print*,101,C
print*,'pass'
END

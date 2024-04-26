REAL :: A(3), B(3), C(3)
INTEGER::N = 3
A = 0.0
B = 0.0
C = 0.0

DO CONCURRENT (I = 1:N)
   B1:  BLOCK
    REAL :: T
    T = A(I) + B(I)
    IF (T == 0.0) EXIT B1
    C(I) = T + SQRT(T)
    END BLOCK B1
END DO

print*, "PASS"
END

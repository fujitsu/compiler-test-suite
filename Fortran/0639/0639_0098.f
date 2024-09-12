         REAL*4 A1(2048),A2(2048),A3(2048)
         REAL*8 B(2048),C(2048),D(2048),E(2048),X(2048)
         CALL SUB(A1,A2,A3,B,C,D,E,X,2048)
         PRINT *,A1,A2,A3
         END

         SUBROUTINE SUB(A1,A2,A3,B,C,D,E,X,N)
         REAL*4 A1(N),A2(N),A3(N)
         REAL*8 B(N),C(N),D(N),E(N),X(N)

         DO 11 I = 1 , N
           B(I) = 4.0 + I - 1
           C(I) = 3.0 - I - 2
           D(I) = 2.0 + I - 3
           E(I) = 1.0 - I - 4
           X(I) = 1.0 + I - 5
 11      CONTINUE

         DO 22 I = 1    , N
           A1(I) = B(I) - C(I) + D(I) - E(I)
           A2(I) = C(I) - B(I) + E(I) - D(I)
           A3(I) = D(I) + E(I) - B(I) - C(I)
 22      CONTINUE
         RETURN
         END

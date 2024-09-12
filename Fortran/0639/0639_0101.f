         REAL*4 A1(2048),A2(2048),A3(2048)
         REAL*8 B(2048),C(2048),D(2048),E(2048),X(2048)
         DATA MM/2048/

         DO 10 I = 1 , MM
           B(I) = 4.0 + I - 1
           C(I) = 3.0 - I - 2
           D(I) = 2.0 + I - 3
           E(I) = 1.0 - I - 4
           X(I) = 1.0 + I - 5
 10      CONTINUE

         DO 11 I = 1    , MM
           A1(I) = B(I) - C(I) + D(I) - E(I)
           A2(I) = C(I) - B(I) + E(I) - D(I)
           A3(I) = D(I) + E(I) - B(I) - C(I)
 11      CONTINUE
         PRINT *,A1,A2,A3
         END

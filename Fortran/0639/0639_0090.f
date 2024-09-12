         REAL*4 A1(2048),A2(2048),A3(2048)
         REAL*8 B(2048),C(2048),D(2048),E(2048),X(2048)

         DO 10 I = 1 , 2048
           B(I) = 4.0 + I - 1
           C(I) = 3.0 - I - 2
           D(I) = 2.0 + I - 3
           E(I) = 1.0 - I - 4
           X(I) = 1.0 + I - 5
 10      CONTINUE

         DO 11 I = 1025 , 2048
           A1(I) = B(I) - C(I) + D(I) - E(I)
           A2(I) = C(I) - B(I) + E(I) - D(I)
           A3(I) = D(I) + E(I) - B(I) - C(I)
 11      CONTINUE

         DO 12 I = 1 , 1152
           A1(I) = B(I) - C(I) + D(I) - E(I)
           A2(I) = C(I) - B(I) + E(I) - D(I)
           A3(I) = D(I) + E(I) - B(I) - C(I)
 12      CONTINUE
         PRINT *,A1,A2,A3

         DO 13 I = 1 , 1025
           A1(I) = B(I) - C(I) + D(I) - E(I)
           A2(I) = C(I) - B(I) + E(I) - D(I)
           A3(I) = D(I) + E(I) - B(I) - C(I)
 13      CONTINUE

         DO 14 I = 101 , 1126
           A1(I) = B(I) - C(I) + D(I) - E(I)
           A2(I) = C(I) - B(I) + E(I) - D(I)
           A3(I) = D(I) + E(I) - B(I) - C(I)
 14      CONTINUE

         DO 15 I = 901 , 1927
           A1(I) = B(I) - C(I) + D(I) - E(I)
           A2(I) = C(I) - B(I) + E(I) - D(I)
           A3(I) = D(I) + E(I) - B(I) - C(I)
 15      CONTINUE
         PRINT *,A1,A2,A3
         END

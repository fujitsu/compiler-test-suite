          REAL A(10),B(10),C(10)
          DATA A,B,C/30*1./
          REAL D(10),E(10),X(10)
          DATA D,E/20*1./
          DO 1 J = 1 , 10
          DO 1 I = 1 , 10
            A(I) = B(I) + C(I)
            IF( D(J) .LE. 10.0 ) THEN
               A(I) = B(I) + I
               IF( D(J) .LE. 5.   ) THEN
                  A(I) = B(I) + C(I)
                  X(I) = B(I) + C(I)
                  GO TO 2
               ENDIF
               IF( D(J) .LE. 5.   ) THEN
                  A(I) = B(I) + C(I)
                  X(I) = B(I) + C(I)
                  GO TO 3
               ENDIF
            ENDIF
 3          D(I) = A(I)  - C(I)
 2        E(I) = B(I) + C(I)
 1        CONTINUE
          PRINT *,A,D,E
          END

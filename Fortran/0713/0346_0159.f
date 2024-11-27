          REAL*4  X(100),Y(100)
          EQUIVALENCE (X(10),A),(X(20),B)
          EQUIVALENCE (Y(50),C),(Y(100),D)
          DATA Y/10*1.0,10*2.0,30*3.0,50*4.0/
          S = 1.
          B = 2.
          DO 10 I = 1 , 100
             X(I) = I
             N = B + S
             M = I - S
             NM   = N + M
             Y(I) = X(I) + NM
             A = B + Y(I)
             X(I) = A + Y(I)
10        CONTINUE
          PRINT *,X
          STOP
          END

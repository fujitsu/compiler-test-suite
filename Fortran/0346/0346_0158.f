          REAL*4  X(100),Y(100)
          EQUIVALENCE (X(10),A),(X(20),B)
          DATA Y/10*1.0,10*2.0,30*3.0,50*4.0/
          S = 1.
          B = 2.
          DO 10 I = 1 , 100
             Y(I) = S + I
             A = B + S
             X(I) = A + Y(I)
10        CONTINUE
          PRINT *,X
          STOP
          END

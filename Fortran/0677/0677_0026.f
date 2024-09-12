      INTEGER*4 A(10)/10*10/,B(10),C(10)

      DO 10 I=1,10
        J=1 + I
        B(I) = A(I) + 1.0
        C(I) = A(I) + 1.0+J
10    CONTINUE

      WRITE(6,*) A,B,C,J
      STOP
      END

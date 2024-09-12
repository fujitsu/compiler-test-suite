      INTEGER*4 A(10),B(10),C(10)

      DO 10 I=1,10
        A(I) = I
        B(I) = A(I) + I
        C(I) = B(I) + A(I)
10    CONTINUE

      WRITE(6,*) A,B,C
      STOP
      END

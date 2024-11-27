      DIMENSION A(5),B(5),C(5),D(5)
      DATA A,B,C/5*1.0,5*1.0,5*1.0/
      X = 0.0
      DO 10 I=1,5
        X = SIN(A(I))
        Y = X
        Z = C(I)
        X = B(I)
        D(I) = Y + X + Z
   10 CONTINUE
      WRITE(6,*) D
      STOP
      END

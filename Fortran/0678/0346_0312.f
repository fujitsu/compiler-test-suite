      IMPLICIT INTEGER*4 (A-Z)
      DIMENSION A(5),C(5),D(5)
      DATA A,C/5*1.0,5*1.0/
      X = 0.0
      DO 10 I=1,5
        X = SIN(FLOAT(A(I)))
        Y = -X
        Z = A(I) * C(I)
        D(I) = Y + X + Z
   10 CONTINUE
      WRITE(6,*) D
      STOP
      END

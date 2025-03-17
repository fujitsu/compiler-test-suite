      IMPLICIT INTEGER*4 (A-Z)
      INTEGER  I
      INTEGER  A(5),C(5),D(5)
      DATA A,C/5*1,5*2/
      X = 0
      DO 10 I=1,5
        X = A(I) + C(I)
        Y = -X
        Z = A(I) * C(I)
        D(I) = Y + Y + Z
   10 CONTINUE
      WRITE(6,*) D
      STOP
      END

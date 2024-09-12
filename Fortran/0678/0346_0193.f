      DIMENSION A(1000),B(1000),D(1000)
      DATA A,B/1000*2.0,1000*3.0/
      X = 0.0
      DO 10 I=1,1000
        X = A(I) + A(I)
        Y = X
        Z = A(I) * A(I)
        X = B(I)
        D(I) = Y + X + Z
   10 CONTINUE
      WRITE(6,*) D
      STOP
      END

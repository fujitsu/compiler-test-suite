      DIMENSION  A(1000),B(1000),C(1000)
      DATA  A,B,C/1000*1.0,1000*2.0,1000*3.0/
      DATA  X/4.0/
      EQUIVALENCE  (X,Y)
      DO 10 I=1,1000
        A(I) = X + B(I)
        C(I) = Y + B(I)
   10 CONTINUE
      WRITE(6,*) A,C
      STOP
      END

      REAL*4   S
      REAL*4   A(10),B(10),C(10)
      DATA     S/1./
      DATA     A,B,C/10*1.0,10*2.0,10*3.0/
      DO 10 I=1,10
        A(I) = B(I) - (S + C(I))
   10 CONTINUE
      WRITE(6,*) A
      STOP
      END

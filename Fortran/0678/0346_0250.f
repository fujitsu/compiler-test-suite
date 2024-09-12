      REAL*8   S1
      REAL*8   A1(10),B1(10),C1(10)
      DATA     S1/1./
      DATA     A1,B1,C1/10*1.0,10*2.0,10*3.0/
      DO 10 I=1,10
        A1(I) = B1(I) / (S1 / C1(I))
   10 CONTINUE
      WRITE(6,*) A1
      STOP
      END

      REAL*8   S1
      REAL*8   A1(10),B1(10),C1(10)
      DATA     S1/1./
      DATA     A1,B1,C1/10*1.0,10*2.0,10*3.0/
      INTEGER  S2
      INTEGER  A2(10),B2(10),C2(10)
      DATA     S2/1/
      DATA     A2,B2,C2/10*1,10*2,10*3/
      DO 10 I=1,10
        A1(I) = B1(I) - (S1 + C1(I))
   10 CONTINUE
      WRITE(6,*) A1
      DO 20 I=1,10
        A2(I) = B2(I) - (S2 + C2(I))
   20 CONTINUE
      WRITE(6,*) A2
      STOP
      END

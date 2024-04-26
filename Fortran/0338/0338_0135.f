      INTEGER*2 A1(10)/10*-1/,C1(10)/10*2/
      INTEGER*4 A2(10)/10*2/,C2(10)/10*4/
      REAL*4 A3(10)/10*-4/,C3(10)/10*-2/
      REAL*8 A4(10)/10*5/,C4(10)/10*-2/
      INTEGER*4 B1(10),B2(10)
      REAL*4 B3(10)
      REAL*8 B4(10)
      DO 1 I=1,10
       B1(I) = MOD(A1(I),C1(I))
       B2(I) = MOD(A2(I),C2(I))
       B3(I) = MOD(A3(I),C3(I))
    1  B4(I) = MOD(A4(I),C4(I))
      WRITE(6,*) B1,B2,B3,B4
      STOP
      END

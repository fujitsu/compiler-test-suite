      INTEGER*2 A1(10)/10*5/,C1(10)/10*4/,C2(10)/10*4/,A3(10)/10*1/
      INTEGER*4 A2(10)/10*3/,C3(10)/10*3/,A4(10)/10*1/,C4(10)/10*3/
      INTEGER*2 B1(10),B3(10)
      INTEGER*4 B2(10),B4(10)
      DO 1 I=1,10
       B1(I) = IBSET(A1(I),C1(I))
       B2(I) = IBSET(A2(I),C2(I))
       B3(I) = IBSET(A3(I),C3(I))
    1  B4(I) = IBSET(A4(I),C4(I))
      WRITE(6,*) B1,B2,B3,B4
      STOP
      END

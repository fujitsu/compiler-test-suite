      INTEGER*2 A1(10)/10*4/,C1(10)/10*8/,C2(10)/10*7/,A3(10)/10*6/
      INTEGER*4 A2(10)/10*0/,C3(10)/10*3/,A4(10)/10*1/,C4(10)/10*3/
      LOGICAL*4 B1(10),B2(10),B3(10),B4(10)
      DO 1 I=1,10
       B1(I) = BTEST(A1(I),C1(I))
       B2(I) = BTEST(A2(I),C2(I))
       B3(I) = BTEST(A3(I),C3(I))
    1  B4(I) = BTEST(A4(I),C4(I))
      WRITE(6,*) B1,B2,B3,B4
      STOP
      END

      INTEGER*2 A1(10)/10*1/,B1(10),C1(10)/10*4/
      INTEGER*4 A2(10)/10*2/,B2(10),C2(10)/10*-2/
      DO 1 I=1,10
       B1(I) = IAND(A1(I),C1(I))
    1  B2(I) = IAND(A2(I),C2(I))
      WRITE(6,*) B1,B2
      STOP
      END

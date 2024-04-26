      REAL*4 A1(10)/10*0/,B1(10),C1(10)/10*1/
      REAL*8 A2(10)/10*3.14/,B2(10),C2(10)/10*1/
      DO 1 I=1,10
       B1(I) = ATAN2(A1(I),C1(I))
    1  B2(I) = ATAN2(A2(I),C2(I))
      WRITE(6,*) B1,B2
      STOP
      END

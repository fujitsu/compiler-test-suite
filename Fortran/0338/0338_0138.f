      REAL*4 A1(10)/10*4.6/,C1(10)/10*-2.9/
      REAL*8 B1(10)
      DO 1 I=1,10
    1  B1(I) = DPROD(A1(I),C1(I))
      WRITE(6,11) B1
   11 FORMAT(5F10.5)
      STOP
      END

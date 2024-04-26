      INTEGER*2 A1(10)/10*1/,C1(10)/10*2/
      INTEGER*4 A2(10)/10*2/,C2(10)/10*3/
      REAL*4 A3(10)/10*4/,C3(10)/10*4/
      REAL*8 A4(10)/10*5/,C4(10)/10*5/
      COMPLEX*8 A5(10)/10*6/
      COMPLEX*16 A6(10)/10*7/
      COMPLEX*8 B1(10),B2(10),B3(10),B4(10),B5(10),B6(10)
      DO 1 I=1,10
       B1(I) = CMPLX(A1(I),C1(I))
       B2(I) = CMPLX(A2(I),C2(I))
       B3(I) = CMPLX(A3(I),C3(I))
       B4(I) = CMPLX(A4(I),C4(I))
       B5(I) = CMPLX(A5(I))
    1  B6(I) = CMPLX(A6(I))
      WRITE(6,*) B1,B2,B3,B4,B5,B6
      STOP
      END

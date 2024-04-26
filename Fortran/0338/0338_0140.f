      REAL*4 A1(10)/10*4/,B1(10)
      REAL*8 A2(10)/10*16/,B2(10)
      COMPLEX*8 A3(10)/10*9/,B3(10)
      COMPLEX*16 A4(10)/10*64/,B4(10)
      DO 1 I=1,10
       B1(I) = SQRT(A1(I))
       B2(I) = SQRT(A2(I))
       B3(I) = SQRT(A3(I))
    1  B4(I) = SQRT(A4(I))
      WRITE(6,*) B1,B2,B3,B4
      STOP
      END

      REAL*4 A1(10)/10*1/,B1(10)
      REAL*8 A2(10)/10*1/,B2(10)
      COMPLEX*8 A3(10)/10*1/,B3(10)
      COMPLEX*16 A4(10)/10*1/,B4(10)
      DO 1 I=1,10
       B1(I) = LOG(A1(I))
       B2(I) = LOG(A2(I))
       B3(I) = LOG(A3(I))
    1  B4(I) = LOG(A4(I))
      WRITE(6,*) B1,B2,B3,B4
      STOP
      END

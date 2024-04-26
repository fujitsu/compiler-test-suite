      REAL*4 A1(10)/10*10/,B1(10)
      REAL*8 A2(10)/10*5/,B2(10)
      DO 1 I=1,10
       B1(I) = TANH(A1(I))
    1  B2(I) = TANH(A2(I))
      WRITE(6,*) B1,B2
      STOP
      END

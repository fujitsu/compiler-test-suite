      COMPLEX*8 A1(10)/10*16/,B1(10)
      COMPLEX*16 A2(10)/10*4/,B2(10)
      DO 1 I=1,10
       B1(I) = CONJG(A1(I))
    1  B2(I) = CONJG(A2(I))
      WRITE(6,*) B1,B2
      STOP
      END

      REAL*4 A1(10)/10*3.5/,B1(10)
      REAL*8 A2(10)/10*4.2/,B2(10)
      DO 1 I=1,10
       B1(I) = AINT(A1(I))
    1  B2(I) = AINT(A2(I))
      WRITE(6,*) B1,B2
      STOP
      END

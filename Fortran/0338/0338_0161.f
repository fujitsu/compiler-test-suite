      INTEGER*2 A1(10)/10*1/,B1(10)
      INTEGER*4 A2(10)/10*2/,B2(10)
      DO 1 I=1,10
       B1(I) = NOT(A1(I))
    1  B2(I) = NOT(A2(I))
      WRITE(6,*) B1,B2
      STOP
      END

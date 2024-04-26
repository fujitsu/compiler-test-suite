      INTEGER*2 A1(10)/10*64/
      INTEGER*4 A2(10)/10*65/
      CHARACTER*1 B1(10),B2(10)
      DO 1 I=1,10
       B1(I) = CHAR(A1(I))
    1  B2(I) = CHAR(A2(I))
      WRITE(6,*) B1,B2
      STOP
      END

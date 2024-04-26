      INTEGER*4 B1(10)
      CHARACTER*1 A1(10)/10*'A'/
      DO 1 I=1,10
    1  B1(I) = ICHAR(A1(I))
      WRITE(6,*) B1
      STOP
      END

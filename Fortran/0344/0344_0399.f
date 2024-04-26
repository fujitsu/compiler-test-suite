      LOGICAL*4  L400X(10)
      INTEGER*4  I400Y(10),I400Z(10)
      DATA       L400X/10*.FALSE./
      DATA       I400Y/2,4,6,6,8,10,2,10,4,8/
      DATA       I400Z/9,3,7,9,1,1,5,3,7,7/
C
      DO 10 I=1,10
        L400X(5)=I400Y(I).GT.I400Z(I)
   10 CONTINUE
      WRITE(6,*) L400X
      STOP
      END

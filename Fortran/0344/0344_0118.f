      DIMENSION  A(10),B(10),C(10)
      DATA     B/1,2,3,4,5,6,7,8,9,10/
      DATA     C/1,2,3,4,5,6,7,8,9,10/
      DO 10 I=1,10
        IF (B(I).NE.SIN(C(I))) THEN
          A(I)=B(I)+C(I)
        ENDIF
   10 CONTINUE
      WRITE(6,100) A
  100 FORMAT (4F10.1)
      STOP
      END

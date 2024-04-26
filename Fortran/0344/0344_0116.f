      REAL  A(10),B(10),C(10),S
      DATA     A/10*1/
      DATA     B/6,2,8,1,5,4,7,3,9,10/
      DATA     C/1,2,3,4,5,6,7,8,9,10/
      S=1
      DO 10 I=1,10
        IF (B(I).EQ.C(I)) THEN
          S=B(I)+C(I)
          S=S*A(I)
          C(I)=S
        ENDIF
   10 CONTINUE
      WRITE(6,100) C
  100 FORMAT (4F10.1)
      STOP
      END

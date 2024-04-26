      INTEGER A(10),B(10),C(10)
      DATA      A/10*0/
      DATA      B/10*3/
      DATA      C/1,0,1,0,1,0,1,0,1,0/
      DO 10 I=1,10
        IF (C(I).EQ.0) THEN
          A(I)=B(I)+C(I)
        ENDIF
   10 CONTINUE
      WRITE(6,100) A
  100 FORMAT (5I10)
      STOP
      END

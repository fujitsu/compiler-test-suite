      INTEGER A(10),B(10),C(10)
      DATA      A/10*0/
      DATA      B/10*3/
      DATA      C/1,1,1,0,0,0,0,0,1,1/
      J=2
      DO 10 I=1,10
        IF (C(I).EQ.0) THEN
          J=J+2
          A(I)=B(I)+J
          A(I)=A(I)+C(I)
        ENDIF
   10 CONTINUE
      WRITE(6,100)A
  100 FORMAT (4I10)
      STOP
      END

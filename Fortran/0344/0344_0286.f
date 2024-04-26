      INTEGER*4 A(10),B(10)
      DATA      A/0,1,0,2,0,3,0,4,0,5/
      DATA      B/10*0/
      J=1
      DO 10 I=1,10
        IF (A(I).GT.0) THEN
          B(J)=A(I)
          J=J+1
        ENDIF
   10 CONTINUE
      WRITE(6,100) B
  100 FORMAT (4I10)
      STOP
      END

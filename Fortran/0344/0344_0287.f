      INTEGER   A(10),B(10),C(10)
      DATA      A/0,1,0,1,0,1,0,1,0,1/
      DATA      B/2,0,2,0,2,0,2,0,2,0/
      DATA      C/10*0/
      K=1
      J=1
      DO 10 I=1,10
        IF (A(I).GT.0) THEN
          C(J)=A(I)
          J=J+1
        ELSE
          A(I)=B(K)
          K=K+1
        ENDIF
   10 CONTINUE
      WRITE(6,100) C
  100 FORMAT (4I10)
      WRITE(6,200) A
  200 FORMAT (4I10)
      STOP
      END

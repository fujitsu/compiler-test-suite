      REAL*4 A(20),B(20),C(20)
      DATA  A,B,C/60*1./
      DO 20 J=1,20
        T=A(J)
        IF (T.GT.5.) GOTO 20
        DO 10 I=1,20
          B(I)=B(I)+C(I)*T
  10    CONTINUE
  20  CONTINUE
      WRITE(6,*) B
      STOP
      END

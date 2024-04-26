      REAL*4 A(20),B(20),C(20)
      LOGICAL*4 L(20)
      DATA  A,B,C/60*1./
      DATA  L/10*.FALSE.,10*.TRUE./
      DO 20 J=1,20
        T=A(J)
        IF (T.GT.5.) GOTO 11
        DO 10 I=1,20
          B(I)=B(I)+C(I)*T
  10    CONTINUE
        A(J)=A(J)+B(J)
  11    CONTINUE
        IF (L(J)) THEN
          DO 12 I=3,20
            C(I)=C(I-2)+C(I)*T
  12      CONTINUE
        ENDIF
  20  CONTINUE
      WRITE(6,*) A
      WRITE(6,*) B
      WRITE(6,*) C
      STOP
      END

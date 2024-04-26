      INTEGER A(10),B(10),X
      LOGICAL L(10)
      DATA    L/10*.FALSE./
      DATA    A/1,2,1,2,1,2,1,2,1,2/
      DATA    B/2,2,2,2,2,2,2,2,2,2/
      DATA    X/1/
      DO 10 I=1,10
        IF(X.EQ.1) THEN
          L(I)=A(I).EQ.B(I)
        ENDIF
   10 CONTINUE
      WRITE(6,*) L
      STOP
      END

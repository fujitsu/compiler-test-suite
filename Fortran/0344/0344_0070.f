      REAL*4 A(20),B(20)
      LOGICAL*4 L(20)
      INTEGER*4 X/1/
      DATA  A,B/40*1./
      DATA  L/20*.TRUE./
      DO 10 I=1,20
        IF (X.EQ.1) THEN
          IF (L(I)) THEN
            A(I)=SIN(B(I))
          ENDIF
        ENDIF
  10  CONTINUE
      WRITE(6,*) A
      STOP
      END

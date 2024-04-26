      PROGRAM MAIN
      INTEGER*2 H/5/
      PARAMETER (M=100)
      LOGICAL*1 L(M)
      REAL*8 D(M)
      DATA L/M*.FALSE./
      data d/M*1./
C
      DO 10 I=1,M
        D(I)=I+H
        IF (NINT(D(I)).EQ.NINT(D(I)/I*I)) L(M+1-I)=.TRUE.
        H=H+I
        DO 20 J=H,1,-1
          IF (J.LT.M) THEN
            D(J)=D(J)+J*J/(J+1)
          ENDIF
   20   CONTINUE
        D(I)=D(I)/17*I
   10 CONTINUE
C
      
      WRITE(6,1) D
      WRITE(6,*) L
1     format(6f12.5)
      STOP
      END

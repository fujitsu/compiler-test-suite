      PROGRAM MAIN
      REAL*8 A(10),B(10),C(10)
      DATA A,B,C/30*1/
      DO 10 I=2,10
        DO 1 J=1,10
          IF (A(J).EQ.0) GOTO 20
          IF (B(J).NE.A(J)) GOTO 20
          C(J)=A(J)+1
    1   CONTINUE
        DO 2 J=1,10
          IF (A(J).LT.1) GOTO 30
          IF (B(J).EQ.0) GOTO 30
    2     C(J)=B(J)+J
   10   CONTINUE
   20   A(I-1)=B(I-1)+1
   30   C(I-1)=A(I-1)+I
   40 WRITE(6,*) 'C='
      WRITE(6,3) C
    3 FORMAT(5E15.6)
      STOP
      END

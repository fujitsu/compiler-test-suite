      PROGRAM MAIN
      INTEGER A(10),B(10)
      DATA A,B/20*1/
      DO 20 I=1,10
        DO 10 J=1,10
          IF (A(J).EQ.J*3) GOTO 30
          IF (A(J).NE.B(J)) GOTO 30
          IF (A(J).LT.I) GOTO 30
   10     A(J)=B(J)+J
          B(I)=I
   20 CONTINUE
   30 WRITE(6,*) A
      WRITE(6,*) B
      STOP
      END

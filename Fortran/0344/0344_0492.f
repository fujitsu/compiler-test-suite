      PROGRAM MAIN
      INTEGER A(10),B(10)
      DATA A,B/20*1/
      DO 20 I=1,10
        DO 10 J=1,10
          IF (A(1).EQ.J*10) GOTO 30
          IF (A(2).EQ.J*9) GOTO 30
          IF (A(3).EQ.J*8) GOTO 30
          IF (A(4).EQ.J*7) GOTO 30
          IF (A(5).EQ.J*6) GOTO 30
C
          IF (A(6).EQ.J*5) GOTO 20
C
          IF (A(7).EQ.J*4) GOTO 30
          IF (A(8).EQ.J*3) GOTO 30
          IF (A(9).EQ.J*2) GOTO 30
          IF (A(10).EQ.J*1) GOTO 30
          B(I)=I
   10     A(J)=B(J)+J
   20 CONTINUE
   30 WRITE(6,*) A
      WRITE(6,*) B
      STOP
      END

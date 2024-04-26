      PROGRAM MAIN
      INTEGER A(100)/100*0/,B/5/
      DO 10 I=1,100
        IF (BTEST(I,B).OR.BTEST(100,I-1).OR.BTEST(I,I+1)) GOTO 20
        A(I) = IBSET(A(I),I)
   10 CONTINUE
C
   20 CONTINUE
      WRITE(6,*)
      WRITE(6,*) ' ## TEST 1 ## '
      WRITE(6,2) A
      WRITE(6,*)
C
      DO 30 I=1,30
        DO 30 J=31,100
          A(I) = IBSET(J,I)
          A(J) = IBSET(A(I),I)
   30 CONTINUE
      WRITE(6,*) ' ## TEST 2 ## '
      WRITE(6,2) A
      WRITE(6,*)
C
    2 FORMAT(5I15)
      STOP
      END

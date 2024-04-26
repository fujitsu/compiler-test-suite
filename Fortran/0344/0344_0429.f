      PROGRAM MAIN
      INTEGER A(30)/30*1/
      LOGICAL L(30)
C
      DO 10 I=1,10
        IF (BTEST(I,1)) A(I)=IBSET(5,1)
   10 CONTINUE
      
      WRITE(6,*)
      WRITE(6,*) ' ## TEST 1 ## '
      WRITE(6,*)
      WRITE(6,1) A
      WRITE(6,*)
C
      DO 20 I=1,10
        L(I) = BTEST(I,A(I))
        IF ((A(I).EQ.1).AND.L(I)) THEN
          A(I+10) = IBCLR(7,0)
        ELSE
          A(I+10) = IBSET(A(I),3)
        ENDIF
   20 CONTINUE
      WRITE(6,*) ' ## TEST 2 ## '
      WRITE(6,*)
      WRITE(6,1) A
      WRITE(6,*)
C
      DO 30 I=1,10
        A(I+10) = A(I+10) + 1
        IF (A(I+10).EQ.2) THEN
          A(I+20) = IBCLR(7,0)
        ELSE
          A(I+20) = IBSET(A(I+10),3)
        ENDIF
   30 CONTINUE
      WRITE(6,*) ' ## TEST 3 ## '
      WRITE(6,*)
      WRITE(6,1) A
    1 FORMAT(10I7)
      STOP
      END

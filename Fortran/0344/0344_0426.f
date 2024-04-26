      PROGRAM MAIN
      INTEGER A(-10:40),B(-10:40),C/9/,D(-10:40)
      DATA A,B/102*1/
      DO 5 N=-10,40
        D(N)=N
    5 CONTINUE
C
      DO 10 I=-10,40
        IF (BTEST(I,1)) THEN
          A(I)=IBSET(I,2)
        ELSE
          B(I)=IBCLR(I,3)
        ENDIF
   10 CONTINUE
      
      WRITE(6,*)
      WRITE(6,*) ' ## TEST 1 ## '
      WRITE(6,1) A
      WRITE(6,*)
      WRITE(6,1) B
      WRITE(6,*)
C
      DO 20 J=-10,40
        IF (BTEST(C,2).AND.BTEST(D(J),3)) THEN
          A(J)=IBSET(C,3)
        ELSE
          B(J)=IBCLR(C,1)
        ENDIF
   20 CONTINUE
      WRITE(6,*) ' ## TEST 2 ## '
      WRITE(6,*)
      WRITE(6,1) A
      WRITE(6,1) B
      WRITE(6,*)
C
      DO 30 K=-10,40
        IF (D(K).EQ.K) THEN
          IF (BTEST(D(K),3)) THEN
            A(K)=IBSET(D(K),1)
          ELSE
            B(K)=IBCLR(D(K),2)
          ENDIF
        ENDIF
   30 CONTINUE
      WRITE(6,*) ' ## TEST 3 ## '
      WRITE(6,*)
      WRITE(6,1) A
      WRITE(6,1) B
    1 FORMAT(10I5)
      STOP
      END

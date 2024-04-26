      PROGRAM MAIN
      INTEGER A(100),B(100),C(100)/100*0/,D/0/
      LOGICAL L(100)/100*.FALSE./,LRC/.TRUE./,L2/.FALSE./
      LOGICAL L3(100)/100*.FALSE./
      DO 10 I=1,100
        A(I) = I
        B(I) = I / 4 + 1
   10 CONTINUE
C
      DO 20 I=1,100,3
        L(I) = BTEST(I,B(I))
        IF (L(I).AND.LRC) THEN
          L2 = BTEST(B(A(I)),I/5)
          D = IBSET(B(A(I)),A(B(I)))
          IF (L2) THEN
            C(I) = IBCLR(I,D)
            D = D + 1
          ENDIF
        ENDIF
        C(I) = C(I) + D
        L3(I) = L2
   20 CONTINUE
      
      WRITE(6,*)
      WRITE(6,*) ' ## TEST 1 ## '
      WRITE(6,*)
      WRITE(6,*) L
      WRITE(6,*) L2
      WRITE(6,*) L3
      WRITE(6,*) C
      WRITE(6,*) D
      WRITE(6,*)
C
      D = 0
      DO 30 I=1,100,3
        L2 = BTEST(I,B(I))
        IF (L2.OR.LRC) THEN
          L2 = BTEST(B(A(I)),I/5).AND.L2
          D = IBSET(B(A(I)),A(B(I)))
          IF (L2) THEN
            D = D + 1
          ENDIF
        ENDIF
        L3(I) = L2
   30 CONTINUE
      WRITE(6,*) ' ## TEST 2 ## '
      WRITE(6,*)
      WRITE(6,*) L2
      WRITE(6,*) L3
      WRITE(6,*) D
      STOP
      END

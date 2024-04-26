      PROGRAM MAIN
      INTEGER A(-99:100),B(-99:100),C(-99:100),RC
      INTEGER D(-99:100),E(-99:100),LIST(-99:100),USER
      INTEGER F(-99:100),G(-99:100)
      LOGICAL L(-99:100)
      EQUIVALENCE(A(1),C(1)),(B(1),E(1))
C
      RC = 1
      DO 10 I=-99,100
        A(I) = I + 99
        LIST(I) = I
        B(I) = 0
        C(I) = 0
        D(I) = 0
        E(I) = 0
        F(I) = 0
        G(I) = 0
        L(I) = .FALSE.
   10 CONTINUE
C
      DO 20 I=-99,100
        L(I) = BTEST(RC,2)
        B(I) = IBSET(A(I),1)
        C(I) = IBCLR(A(RC),ABS(MOD(I,5)))
   20 CONTINUE
      
      WRITE(6,*)
      WRITE(6,*) ' ## TEST 1 ## '
      WRITE(6,*) L
      WRITE(6,2) (B(I),I=-99,100,5)
      WRITE(6,2) (C(I),I=-99,100,5)
      WRITE(6,*)
C
      USER = 0
      DO 30 I=-99,100,2
        USER = USER + 1
        L(I) = BTEST(B(I),1)
        D(I) = IBSET(USER,1)
        E(I) = IBCLR(A(RC),RC)
   30 CONTINUE
      WRITE(6,*) ' ## TEST 2 ## '
      WRITE(6,*) L
      WRITE(6,2) (D(I),I=-99,100,5)
      WRITE(6,2) (E(I),I=-99,100,5)
      WRITE(6,*)
C
      DO 40 I=-99,100
        L(LIST(I)) = BTEST(A(I),A(RC))
        D(I) = IBSET(A(LIST(I)),IAND(C(I),31))
        E(I) = IBCLR(6,C(LIST(I)))
   40 CONTINUE
      WRITE(6,*) ' ## TEST 3 ## '
      WRITE(6,*) L
      WRITE(6,2) (D(I),I=-99,100,5)
      WRITE(6,2) (E(I),I=-99,100,5)
      WRITE(6,*)
C
      DO 50 I=-99,100,3
        L(I) = BTEST(D(LIST(I)),5)
        F(I) = IBSET(A(I),E(LIST(I)))
        G(LIST(I)) = IBCLR(I,IAND(F(I),10))
   50 CONTINUE
      WRITE(6,*) ' ## TEST 4 ## '
      WRITE(6,*) L
      WRITE(6,2) (F(I),I=-99,100,5)
      WRITE(6,2) (G(I),I=-99,100,5)
C
    1 FORMAT(5I15)
    2 FORMAT(15I5)
      STOP
      END

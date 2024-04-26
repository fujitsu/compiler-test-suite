      PROGRAM MAIN
      INTEGER A(-99:100),B(-99:100),C(-99:100),RC/2/
      INTEGER D(-99:100),E(-99:100),LIST(-99:100),USER
      INTEGER F(-99:100),G(-99:100)
      LOGICAL L(-99:100)/200*.FALSE./
      DATA A,B,C,D,E,F,G/1400*0/
C
      DO 10 I=-99,100
        A(I) = I + 99
        LIST(I) = I
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
      WRITE(6,1) (B(I),I=-99,100,5)
      WRITE(6,2) (C(I),I=-99,100,5)
      WRITE(6,*)
C
      USER = 0
      DO 30 I=-99,100,2
        USER = USER + 1
        L(I) = BTEST(USER,1)
        D(I) = IBSET(C(5),0)
        E(I) = IBCLR(A(RC),RC)
   30 CONTINUE
      WRITE(6,*) ' ## TEST 2 ## '
      WRITE(6,*) L
      WRITE(6,1) (D(I),I=-99,100,5)
      WRITE(6,2) (E(I),I=-99,100,5)
      WRITE(6,*)
C
      DO 40 I=-99,100
        L(LIST(I)) = BTEST(A(I),31)
        D(I) = IBSET(A(LIST(I)),0)
        E(I) = IBCLR(6,1)
   40 CONTINUE
      WRITE(6,*) ' ## TEST 3 ## '
      WRITE(6,*) L
      WRITE(6,2) (D(I),I=-99,100,5)
      WRITE(6,2) (E(I),I=-99,100,5)
      WRITE(6,*)
C
      DO 50 I=-99,100,3
        L(I) = BTEST(D(LIST(I)),2)
        F(I) = MOD(IBSET(A(I),E(LIST(I))),5)
        G(LIST(I)) = IBCLR(I,F(I))
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

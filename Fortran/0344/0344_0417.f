      PROGRAM MAIN
      INTEGER A(-99:100),B(-99:100),C(-99:100),RC,NN,MM
      INTEGER D(-99:100),E(-99:100),LIST(-99:100),USER
      INTEGER F(-99:100),G(-99:100)
      LOGICAL L(-99:100)
      COMMON /COM1/A,B,C,D,E,F,G
      COMMON /COM2/L,LIST
      COMMON /COM3/RC,USER,NN,MM
C
      CALL INIT
C
      DO 20 I=NN,MM
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
      DO 30 I=NN,MM,2
        USER = USER + 1
        L(I) = BTEST(USER,0)
        D(I) = IBSET(B(I),0)
        E(I) = IBCLR(A(RC),0)
   30 CONTINUE
      WRITE(6,*) ' ## TEST 2 ## '
      WRITE(6,*) L
      WRITE(6,2) (D(I),I=-99,100,5)
      WRITE(6,2) (E(I),I=-99,100,5)
      WRITE(6,*)
C
      DO 40 I=NN,MM
        L(LIST(I)) = BTEST(A(I),0)
        D(I) = IBSET(A(LIST(I)),IAND(I,31))
        E(I) = IBCLR(B(LIST(I)),0)-IBCLR(B(LIST(I)),0)
   40 CONTINUE
      WRITE(6,*) ' ## TEST 3 ## '
      WRITE(6,*) L
      WRITE(6,1) (D(I),I=-99,100,10)
      WRITE(6,2) (E(I),I=-99,100,10)
      WRITE(6,*)
C
      DO 50 I=NN,MM,3
        L(I) = BTEST(D(LIST(I)),3)
        F(I) = IAND(IBSET(A(I),E(LIST(I))),30)
        G(LIST(I)) = IBCLR(I,F(I))
   50 CONTINUE
      WRITE(6,*) ' ## TEST 4 ## '
      WRITE(6,*) L
      WRITE(6,2) (F(I),I=-99,100,10)
      WRITE(6,1) (G(I),I=-99,100,10)
C
    1 FORMAT(5I15)
    2 FORMAT(15I5)
      STOP
      END
C
      SUBROUTINE INIT
      INTEGER A(-99:100),B(-99:100),C(-99:100),RC
      INTEGER D(-99:100),E(-99:100),LIST(-99:100),USER
      INTEGER F(-99:100),G(-99:100),NN,MM
      LOGICAL L(-99:100)
      COMMON /COM1/A,B,C,D,E,F,G
      COMMON /COM2/L,LIST
      COMMON /COM3/RC,USER,NN,MM
C
      RC = 1
      NN = -99
      MM = 100
      DO 10 I=NN,MM
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
      RETURN
      END

      PROGRAM MAIN
      INTEGER*8 A(0:63),B(0:63)/64*0/,D(0:63)/64*0/
      INTEGER*4 C(0:63)/64*0/,E(0:63)/64*0/
      EQUIVALENCE(A(0),B(0))
      DO 10 I=1,31
        A(I) = IBSET(B(I),I)
        DO 20 J=32,63
          C(J) = IBSET(D(J),J)
   20   CONTINUE
        E(I) = IBSET(B(I),I+32)
        A(I+32) = IBSET(B(I),I+32)
   10 CONTINUE
      WRITE(6,1) (A(I),I=0,63,5)
      WRITE(6,2) (C(I),I=0,63,5)
      WRITE(6,3) (E(I),I=0,63,5)
    1 FORMAT(3I21)
    2 FORMAT(10I5)
    3 FORMAT(5I15)
      STOP
      END

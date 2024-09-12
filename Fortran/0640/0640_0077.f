      REAL*4  A(20),B(20),C(20),D(20),E(20)
      EQUIVALENCE (A,D),(E,B)
      DATA  A,B,C/20*1.,20*2.,20*3./

      DO 10 I=2,18
       A(I)=B(I)+C(I)
       CALL  SUB(D(I))
 10   CONTINUE

      DO 20 I=2,18
       B(I)=A(I)+C(I)
       CALL  SUB(E(I))
 20   CONTINUE

      DO 30 I=2,18
       A(1)=B(I)+C(I)
       CALL  SUB(A(I))
 30   CONTINUE
      WRITE(6,*) A
      WRITE(6,*) B

      DO 40 I=2,18
       A(I)=B(I)+C(I)
       CALL  SUB(D(1))
 40   CONTINUE
      DO 50 I=2,18
       B(1)=A(I)+C(I)
       CALL  SUB(E(I))
 50   CONTINUE
      WRITE(6,*) A
      WRITE(6,*) B
      STOP
      END
      SUBROUTINE SUB(X)
      X = X+1.
      RETURN
      END

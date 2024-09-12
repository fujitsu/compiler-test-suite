      PROGRAM MAIN
      REAL*4  A(20),B(20),C(20),D(20)
      EQUIVALENCE (A(1),D(1))
      DATA  A,B,C/20*1.,20*2.,20*3./,NN/19/
      DO 10 I=2,NN
       A(I)=B(I)+C(I)
       CALL  SUB(D(I))
 10   CONTINUE
      DO 20 I=2,NN
       B(I)=A(I)+C(I)
       CALL  SUB(D(I))
 20   CONTINUE
      DO 30 I=2,NN
       C(I)=B(I)*A(I)
       CALL  SUB(D(I))
 30   CONTINUE
      DO 40 I=2,NN
       A(I)=C(I)-B(I)
       CALL  SUB(D(I))
 40   CONTINUE
      CALL  SUB1(A,B,C,NN+1)
      WRITE(6,*) A
      WRITE(6,*) B
      WRITE(6,*) C
      STOP
      END
      SUBROUTINE SUB1(A,B,C,NN)
      DIMENSION  A(NN),B(NN),C(NN)
      DIMENSION  D(20),E(20)
      EQUIVALENCE (D(1),E(1))
      DO 5 I=1,20
        D(I)=B(I)
        E(I)=A(I)
 5    CONTINUE
      DO 10 J=1,5
      DO 10 I=2,NN
       CALL  SUB(D(I))
       E(J)=E(J)+(C(I)-B(I))
 10   CONTINUE
      DO 20 J=1,5
      DO 20 I=2,NN
       CALL  SUB(E(I))
       D(J)=D(J)+(A(I)-B(I))
 20   CONTINUE
      DO 30 J=1,5
      DO 30 I=2,NN
       CALL  SUB(D(I))
       E(J)=E(J)+(A(I)-B(I))
 30   CONTINUE
      DO 40 J=1,5
      DO 40 I=2,NN
       CALL  SUB(D(I))
       D(I)=E(I)+(C(I)-B(I))
 40   CONTINUE
      WRITE(6,*) ' D= ',D
      WRITE(6,*) ' E= ',E
      RETURN
      END
      SUBROUTINE SUB(X)
      X=X+1.
      RETURN
      END

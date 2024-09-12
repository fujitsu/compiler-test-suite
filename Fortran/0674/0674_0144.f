      PROGRAM MAIN
      IMPLICIT  REAL*8(A-D)
      DIMENSION  A(50,50),B(50,50),C(50,50),L(50)
      DATA  A,B,C/2500*1.D0,2500*2.D0,2500*3.D0/
      DATA  NN/50/

      DO 10 I=1,NN
       L(I)=I
 10   CONTINUE
      CALL SUB(A,B,C,L,NN)
      WRITE(6,*) 'A=',((A(I,J),I=1,30),J=1,30)
      WRITE(6,*) 'B=',((B(I,J),I=1,30),J=1,30)
      WRITE(6,*) 'C=',((C(I,J),I=1,30),J=1,30)
      STOP
      END
      SUBROUTINE SUB(A,B,C,L,NN)
      IMPLICIT  REAL*8(A-D)
      DIMENSION  A(NN,NN),B(NN,NN),C(NN,NN),L(NN)
      NX = NN-5

      DO 10 K=1,3
       DO 20 I=2,NX,L(K)
        DO 20 J=2,NX,L(K)
          B(J,I) = A(J+1,I)
          A(J,I) = A(J,I) + (B(J,I)-C(J,I+1))
  20    CONTINUE
        DO 30 J=2,NX
          B(J,I+1) = A(J,I+1) + C(J,I)
          C(J,I)=B(J+1,I+1)
  30    CONTINUE
        DO 40 J=2,NX
          A(J,I)=C(J,I+1)
          C(J+1,I) = B(J+1,I)+A(J-1,I)
  40    CONTINUE
  10  CONTINUE

      RETURN
      END

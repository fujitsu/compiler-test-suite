      PROGRAM MAIN
      IMPLICIT REAL*8(A-B,D-E),COMPLEX*16(C)
      DIMENSION  A(50),B(50),D(50),E(50)
      DIMENSION  C1(50),C2(50),C3(50)
      EQUIVALENCE  (A(1),D(1)),(E(50),C3(50))
      DATA  A,B/50*4.D0,50*2.D0/,NN/48/
      DATA  C1,C2,C3/50*(1.D0,2.D0),50*(-2.D0,-1.2D0),50*(3.D0,2.D0)/

      DO 10 I=2,NN
        DX=A(I)+DREAL(C1(I))
        CALL  SUBC(C3(I))
        C1(I)=C2(I)+DCMPLX(DX,E(I))
 10   CONTINUE
      DO 20 J=2,NN/3
       DO 20 I=2,NN
        A(I)=DREAL(C1(I))+DIMAG(C3(I))
        CALL  SUBR(D(I))
        CALL  SUBC(E(I))
        C2(J)=C2(J)+C1(I)
 20   CONTINUE
      DO 30 I=2,NN
        B(I)=A(I)-DREAL(C2(I))
        CALL  SUBR(A(1))
        D(I-1)=DIMAG(C3(I))+E(I)
 30   CONTINUE
      DO 40 I=2,NN
        DX=A(I)+DREAL(C3(I))
        DY=A(I)+DIMAG(C3(I))
        CALL  SUBR(DX+A(I))
        CALL  SUBR(DY+D(I))
        C2(J)=C2(J)+(C1(I)-DCMPLX(DX,DY))
 40   CONTINUE
      WRITE(6,1000) A
      WRITE(6,1000) B
      do 99 i=1,nn
      WRITE(6,1000) real(C1(i)),imag(c1(i))
      WRITE(6,1000) real(C2(i)),imag(c2(i))
      WRITE(6,1000) real(C3(i)),imag(c3(i))
99    continue
1000  format(g20.6,2x,g20.6)
      STOP
      END
      SUBROUTINE SUBR(X)
      REAL*8 X
      X=X+1.D0
      RETURN
      END
      SUBROUTINE SUBC(CX)
      REAL*8 CX
      CX=CX+(1.D0,-1.D0)
      RETURN
      END

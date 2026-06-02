!             CVCT3517            LEVEL=1        DATE=85.07.16
      PROGRAM CV3517
      IMPLICIT REAL*8(A-B,D-E),COMPLEX*16(C)
      type::str_r8
        sequence
        real*8::r8
      end type
      type::str_c16
        sequence
        complex*16::c16
      end type
      type (str_r8)::A(50),B(50),D(50),E(50)
      type (str_c16)::C1(50),C2(50),C3(50)
      EQUIVALENCE  (A(1),D(1)),(E(50),C3(50))
      DATA  A%r8,B%r8/50*4.D0,50*2.D0/,NN/48/
      DATA  C1%c16,C2%c16,C3%c16/50*(1.D0,2.D0),50*(-2.D0,-1.2D0),50*(3.D0,2.D0)/
!*
      DO 10 I=2,NN
        DX=A(I)%r8+DREAL(C1(I)%c16)
        CALL  SUBC(C3(I)%c16)
        C1(I)%c16=C2(I)%c16+DCMPLX(DX,E(I)%r8)
 10   CONTINUE
      DO 20 J=2,NN/3
       DO 20 I=2,NN
        A(I)%r8=DREAL(C1(I)%c16)+DIMAG(C3(I)%c16)
        CALL  SUBR(D(I)%r8)
        CALL  SUBC(E(I)%r8)
        C2(J)%c16=C2(J)%c16+C1(I)%c16
 20   CONTINUE
      DO 30 I=2,NN
        B(I)%r8=A(I)%r8-DREAL(C2(I)%c16)
        CALL  SUBR(A(1)%r8)
        D(I-1)%r8=DIMAG(C3(I)%c16)+E(I)%r8
 30   CONTINUE
      DO 40 I=2,NN
        DX=A(I)%r8+DREAL(C3(I)%c16)
        DY=A(I)%r8+DIMAG(C3(I)%c16)
        CALL  SUBR(DX+A(I)%r8)
        CALL  SUBR(DY+D(I)%r8)
        C2(J)%c16=C2(J)%c16+(C1(I)%c16-DCMPLX(DX,DY))
 40   CONTINUE
      WRITE(6,1000) A
      WRITE(6,1000) B
      do 99 i=1,nn
      WRITE(6,1000) real(C1(i)%c16),imag(c1(i)%c16)
      WRITE(6,1000) real(C2(i)%c16),imag(c2(i)%c16)
      WRITE(6,1000) real(C3(i)%c16),imag(c3(i)%c16)
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

      PROGRAM MAIN
      IMPLICIT  REAL*8(A-D)
      DIMENSION  A(50,50),B(50,50),C(50,50)
      DATA  A,B,C/2500*1.D0,2500*2.D0,2500*3.D0/
      DATA  NN/50/

      CALL SUB(A,B,C,NN)
      WRITE(6,*) ((A(I,J),I=1,30),J=1,30)
      WRITE(6,*) ((B(I,J),I=1,30),J=1,30)
      WRITE(6,*) ((C(I,J),I=1,30),J=1,30)
      STOP
      END
      SUBROUTINE SUB(A,B,C,NN)
      IMPLICIT  REAL*8(A-D)
      DIMENSION  A(NN,NN),B(NN,NN),C(NN,NN)
      NX=NN-5
      DX=0.D0
      DY=0.D0

      DO 10 K=1,5
       DX=DFLOAT(K)
       DO 10 I=2,NX
         DY=C(I,K)
        DO 20 J=1,NX
          A(I,K) = A(I,K) + (B(J,K)+DMIN1(DX,DY))/C(J,K+1)
  20    CONTINUE
        DO 30 J=1,NX
          B(I,K+1) = B(I,K+1) + C(I,J)
  30    CONTINUE
        DX=A(I,K)
        DO 40 J=1,NX
          C(I+1,K) = C(I+1,K)+A(I+1,J)
  40    CONTINUE
  10  CONTINUE
      WRITE(6,*) ' DX= ',DX,' DY= ',DY

      RETURN
      END

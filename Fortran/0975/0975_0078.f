      PROGRAM  MAIN
      IMPLICIT REAL*8(A-B,D),LOGICAL*4(L),COMPLEX*16(C)
      COMMON /BLK/ CD10(50,100)
      DATA     NN/50/

      DO 10 I=1,NN
       DX=DFLOAT(I)
       DO 10 J=1,NN*2
        DY=DFLOAT(J)
        CD10(I,J)=DCMPLX(DX,DY)
  10   CONTINUE

       WRITE(6,*) DX
      STOP
      END

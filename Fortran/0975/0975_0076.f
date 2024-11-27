      PROGRAM  MAIN
      IMPLICIT REAL*8(A-B,D),LOGICAL*4(L),COMPLEX*16(C)
      COMMON /BLK/ CD10(50,100)
      DATA     NN/50/

      DO 10 I=1,50
       DX=DFLOAT(I)
       DO 10 J=1,NN*2
        DY=DFLOAT(J)
        CD10(I,J)=DCMPLX(DX,DY)
  10   CONTINUE

      WRITE(6,*) CD10(1,1),CD10(50,100)
      STOP
      END

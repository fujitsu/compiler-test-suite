      PROGRAM  MAIN
      IMPLICIT REAL*8(A-B,D),COMPLEX*16(C)
      COMMON /BLK/ CD10(20,20),CD30(20)
      DATA     NN/20/,MM/20/
C
      DO 10 I=1,NN
        DX=DFLOAT(I)
        DO 10 J=1,NN
          CD10(I,J)=DCMPLX(DX,J)
  10  CONTINUE

      DO 11 I=1,20
  11    NN = I - 1
      WRITE(6,1) ((CD10(I,J),I=1,20,5),J=1,20,5)
 1    format(2(' (',e14.6,',',e14.6,') '))
C
      DY = 1.
      DO 20 I=1,MM
        DO 30 J=1,MM
          CD10(I,J) = DCMPLX(DY,J)
  30    CONTINUE
        DY = SIN(REAL(I+1))
  20  CONTINUE
C
      MM = MM - 1
      WRITE(6,1) ((CD10(I,J),I=1,20,5),J=1,20,5)
      WRITE(6,2) DY
2      format(f10.5)
      STOP
      END

      PROGRAM MAIN
      IMPLICIT  REAL*8(A-D)
      DIMENSION  A(20,20),B(20,20),C(20,20)
      DATA  A,B,C/400*1.D0,400*2.D0,400*3.D0/
      DATA  NN/15/

      DO 10 K=1,5
       DO 10 I=2,NN
        DO 20 J=1,NN
          A(I,K) = A(I,K) + (B(J,K)-C(J,K+1))
  20    CONTINUE
        CALL  SUB(A(I,K+1))
        DO 30 J=1,NN
          B(I,K+1) = B(I,K+1) + C(I,J)
  30    CONTINUE
        CALL  SUB(B(I,K))
        DO 40 J=1,NN
          C(I+1,K) = C(I+1,K)+A(I+1,J)
  40    CONTINUE
  10  CONTINUE

      WRITE(6,*) ((A(I,J),I=1,10),J=1,10)
      WRITE(6,*) ((B(I,J),I=1,10),J=1,10)
      WRITE(6,*) ((C(I,J),I=1,10),J=1,10)
      STOP
      END
      SUBROUTINE  SUB(ZZZ)
      REAL*8 ZZZ
      ZZZ = ZZZ/2.D0
      RETURN
      END

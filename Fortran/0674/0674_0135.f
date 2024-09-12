      PROGRAM MAIN
      IMPLICIT  COMPLEX*16(C),REAL*8(A-B)
      COMMON /BLK/  A(40,40),B(40,40),C(40,40)
      DIMENSION  A1(20,20),A2(20,20),B1(20,20),C1(20,20),C2(20,20)
      EQUIVALENCE (A1(1,1),C1(1,1)),(A2(20,20),C1(20,20))
      EQUIVALENCE (B(1,1),B1(1,1)),(C(10,10),C2(20,20))
      DATA  C1/400*(1.D0,2.D0)/
      DATA  NN/15/

      N = 1
      DO 10 J=2,NN
        DO 20 I=2,NN+1
         A1(I,J) =B1(I,J+1)+C2(I,J+1)
  20    CONTINUE
        DO 30 I=1,NN
         C2(I,J) = B1(I,J) + A2(I,J)
         N=N+1
  30    CONTINUE
        DO 40 I=2,NN+1
         B1(I,J) = A1(I-1,J)*C1(I,J)
  40    CONTINUE
  10  CONTINUE

      WRITE(6,*) ((A1(I,J),I=1,20),J=1,20)
      WRITE(6,*) ((B(I,J),I=1,20),J=1,20)
      WRITE(6,*) ((C(I,J),I=1,20),J=1,20)
      STOP
      END
      BLOCK DATA  INIT
      IMPLICIT  REAL*8(A,B),COMPLEX*16(C)
      COMMON /BLK/  A(40,40),B(40,40),C(40,40)
      DATA   A,B,C/1600*1.D0,1600*2.D0,1600*(3.D0,2.D0)/
      END

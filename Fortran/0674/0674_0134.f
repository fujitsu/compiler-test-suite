      PROGRAM MAIN
      COMMON /BLK/  A(40,40),B(40,40),C(40,40)
      COMMON     BW1(400),BW2(400)
      REAL*4  A1(20,20),B1(20,20),C1(20,20)
      EQUIVALENCE (A(1,1),A1(1,1)),(C(40,40),C1(20,20))
      EQUIVALENCE (BW1(1),B1(1,1))
      DATA  NN/15/

      N = 1
      DO 10 J=2,NN
        DO 20 I=2,NN+1
         A(I,J) =B(I,J+1)+C(I,J+1)
  20    CONTINUE
        DO 30 I=1,NN
         BW1(I) = BW2(I) + A(I,J)
         N=N+1
  30    CONTINUE
        DO 40 I=2,NN+1
         C1(I,J) = A1(I-1,J)*BW1(I)
  40    CONTINUE
  10  CONTINUE

      WRITE(6,*) ((A(I,J),I=1,20),J=1,20)
      WRITE(6,*) ((B(I,J),I=1,20),J=1,20)
      WRITE(6,*) ((C(I,J),I=1,20),J=1,20)
      STOP
      END
      BLOCK DATA  INIT
      COMMON /BLK/  A(40,40),B(40,40),C(40,40)
      COMMON     BW1(400),BW2(400)
      DATA   A,B,C/1600*1.,1600*2.,1600*3./
      DATA   BW1,BW2/400*1.,400*2./
      END

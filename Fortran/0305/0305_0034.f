      DIMENSION  A(20),B(20),C(20),D(20,20)
      DIMENSION  L(20)
      DATA  A,B,C/20*1.,20*3.,20*5./,D/200*-1.D0,200*-3.D0/
      DATA  N1,N2/1,2/,N3/2/
      DO 20 I=2,10
        A(I+N1*N2)  = 1
 20   CONTINUE
C
      WRITE(6,1) A
      DO 120 I=2,10
        A(N1*N2+I)  = 1
 120   CONTINUE
C
      WRITE(6,1) A
 1    format(10f5.2)
      STOP
      END


      PROGRAM MAIN
      REAL*4  A(40,40),B(40,40),C(40,40)
      REAL*4  A1(20,20),B1(20,20),C1(20,20)
      REAL*4  A2(20,20),B2(20,20),C2(20,20)
      EQUIVALENCE (A(1,1),A1(1,1)),(A(40,40),A2(20,20))
      EQUIVALENCE (B(1,1),B1(1,1)),(C(40,40),B2(20,20))
      EQUIVALENCE (C(1,1),C1(1,1)),(B(40,40),C2(20,20))
      DATA  A,B/1600*1.,1600*2./,C/1600*3./,NN/15/

      DO 10 J=2,NN
        DO 20 I=2,NN+1
         A1(I,J) =B1(I,J)+C1(I,J)
  20    CONTINUE
        DO 30 I=1,NN
         B1(I,J) = A2(I,J)*C2(I+1,J)
  30    CONTINUE
        DO 40 I=2,NN+1
         C2(I,J) = A1(I,J)*B2(I,J)
  40    CONTINUE
  10  CONTINUE

      WRITE(6,*) ((A(I,J),I=1,10),J=1,10)
      WRITE(6,*) ((B(I,J),I=1,10),J=1,10)
      WRITE(6,*) ((C(I,J),I=1,10),J=1,10)
      STOP
      END

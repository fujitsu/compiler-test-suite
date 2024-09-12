      PROGRAM MAIN
      REAL*4  A(40,40),B(40,40),C(40,40)
      DATA  A,B/1600*1.,1600*2./,C/1600*3./,NN/15/

      DO 10 I=2,NN
       DO 20 J=2,NN
        A(I,J) = B(I,J*2)+C(I,J*2+1)
        B(I*2,J) = A(I,J) + C(I,J*2)
  20   CONTINUE

       DO 30 J=2,NN
        C(I,J*2) = B(I*2+1,J*2+1) + A(I*1,J*1)
  30   CONTINUE
  10  CONTINUE

      WRITE(6,*) ((A(I,J),I=1,20),J=1,20)
      WRITE(6,*) ((B(I,J),I=1,20),J=1,20)
      WRITE(6,*) ((C(I,J),I=1,20),J=1,20)
      STOP
      END

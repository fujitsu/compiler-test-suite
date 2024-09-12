      PROGRAM MAIN
      REAL*4  A(20,20),B(20,20),C(20,20)
      DATA  A,B/400*1.,400*2./,C/400*3./,NN/15/

      DO 10 I=2,NN
       DO 20 J=NN,2,-1
        A(I,J)=B(I,NN+1)*C(I,J)
  20   CONTINUE

       DO 30 J=NN,2,-1
        B(I,J)= A(I,1)+C(I,J)
  30   CONTINUE
  10  CONTINUE

      WRITE(6,*) ((A(I,J),I=1,10),J=1,10)
      WRITE(6,*) ((B(I,J),I=1,10),J=1,10)
      STOP
      END

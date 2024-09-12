      REAL*4  A(20,20),B(20,20),C(20,20)
      DATA  A,B,C/400*1.,400*2.,400*3./
      DATA  NN/15/,N/1/

      DO 10 I=1,NN
       C(3,I)=0.
       DO 10 J=1,NN
         A(I,J)=A(J,I)+C(I+1,2)*B(J,I)
 10   CONTINUE

      DO 20 I=1,NN
       B(N,I)=0.
       DO 20 J=1,NN
         A(I,J)=A(J,I)+B(I+N-1,2)*C(I,J)
 20   CONTINUE
      WRITE(6,*) ' A= ',((A(I,J),I=1,10),J=1,10)
      WRITE(6,*) ' B= ',((B(I,J),I=1,10),J=1,10)
      WRITE(6,*) ' C= ',((C(I,J),I=1,10),J=1,10)
      STOP
      END

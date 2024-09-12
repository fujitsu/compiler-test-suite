      REAL*4  A(20,20),B(20,20),C(20,20)
      DATA  A,B,C/400*1.,400*2.,400*3./,NN/15/,N1/2/

      DO 10 I=2,NN
       DO 10 J=2,NN
        A(J,I)=B(J,I)+C(J,I)
  10  CONTINUE

      DO 20 I=2,NN,2
       DO 20 J=2,NN
        C(J,I)=B(J,I)+A(J,I)
  20  CONTINUE

      DO 30 I=2,NN,N1
       DO 30 J=2,NN
        B(J,I)=A(J,I)+C(J,I)
  30  CONTINUE

      DO 40 I=2,NN,N1/2
       DO 40 J=2,NN
        A(J,I)=B(J,I)+C(J,I)
  40  CONTINUE
      WRITE(6,*) ' A=',((A(I,J),I=1,15),J=1,15)
      WRITE(6,*) ' B=',((B(I,J),I=1,15),J=1,15)
      WRITE(6,*) ' C=',((C(I,J),I=1,15),J=1,15)
      STOP
      END

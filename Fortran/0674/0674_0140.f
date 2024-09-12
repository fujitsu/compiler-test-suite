      PROGRAM MAIN
      REAL*8  A(20,20,20),B(20,20,20),C(20,20,20)
      DATA  A,B,C/8000*1.D0,8000*2.D0,8000*3.D0/
      DATA  NN/15/,N1/1/,N2/2/

      DO 10 I=2,NN
       DO 20 J=1,20
         A(I,J,I) = B(I-N1+N2,J,I-N1)+C(NN,I+1,I+1)
  20   CONTINUE
       DO 30 J=1,I
         C(I,J,I) = B(I,J,20) + A(I+N1,1,I+N2)
  30   CONTINUE
       DO 40 J=1,20
         B(I,J,I) = A(I+N1,J,I)*C(2,1,I)
  40   CONTINUE
  10  CONTINUE

      WRITE(6,*) (((A(I,J,K),I=1,10),J=1,10),K=1,10)
      WRITE(6,*) (((B(I,J,K),I=1,10),J=1,10),K=1,10)
      WRITE(6,*) (((C(I,J,K),I=1,10),J=1,10),K=1,10)
      STOP
      END

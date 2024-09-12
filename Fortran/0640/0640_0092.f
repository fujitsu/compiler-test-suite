      REAL*4  A(40,40),B(40,40),C(40,40)
      DATA    A,B,C/1600*1.,1600*2.,1600*3./
      DATA    N1/1/,N2/2/,N3/3/,NN/20/

      DO 10 I=1,NN
       L1 = I+N1+N2
       L2 = I+N3+1
       LL = I+N1+N3
       DO 10 J=1,LL
         K1=J+N1+1
         K2=J+N3-1
         A(K1,L1)=B(K2,L2)+C(J,I)
         B(J+N2+N1,I+2)=A(J+1,I+N2-1)+C(J,I)
  10  CONTINUE

      WRITE(6,*) A
      WRITE(6,*) B
      STOP
      END

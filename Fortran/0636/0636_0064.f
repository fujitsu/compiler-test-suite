      REAL*4  A(20,20),B(20,20),C(20,20),D(20)
      DATA   A,B,C/400*1.,400*2.,400*3./,N/1/,NN/15/
      DATA   D/20*4./
      DO 10 I=1,NN
       DO 1 J=1,20
         A(J,N) = B(J,I)+1.
  1    CONTINUE
       N = N+1
       DO 2 J=1,20
        B(J,I) = A(J,N)+2.
   2   CONTINUE
  10  CONTINUE
      N=1
      DO 20 I=1,NN
       B(1,N) = C(2,I)+1.*SIN(B(10,N)/5.)
       DO 3 K=10,20
         A(K,I)=A(K,I)+1.
   3   CONTINUE
       N = N+1
       B(3,N) = C(1,I)*2.+SQRT(D(I))
       DO 4 J=10,20
        IF(N.GT.100) A(J,I)=0.1D0
        A(J,I) = 2.+N
   4   CONTINUE
  20  CONTINUE
      PRINT *,'A= ',A
      PRINT *,'B= ',B
      STOP
      END

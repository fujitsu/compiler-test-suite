      REAL*4  A(20,20),B(20,20),C(20,20)
      DATA   A,B,C/400*1.,400*2.,400*3./,N/1/,NN/15/
C
      DO 10 I=1,NN
        N=1
        DO 20 J=1,15
          N=N+1
          A(J,N) = B(J,I)+1.*C(I,J)
  20    CONTINUE
  10  CONTINUE
      WRITE(6,*) ' A= ',A
      STOP
      END

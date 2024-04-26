      REAL*4 A(100),B(100)
      DATA A/100*0.0/,B/100*1.0/,M/1/
      DO 1 I=1,10
    1  N = I * 10
      DO 10 I=1,N
         M = M + 1
         A(M) = B(M)
         M = M - 1
         A(M) = A(M)
   10 CONTINUE
      WRITE(6,*) A
      STOP
      END

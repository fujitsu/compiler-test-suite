      DIMENSION  A(10),B(10),C(10),L(10)
      DATA  A,B,C/10*1.0,10*2.0,10*3.0/
      DATA  L/0,1,2,3,4,5,6,7,8,9/
      DO 10 N=1,10
        L(N) = L(N) + 1
        A(L(N)) = B(L(N)) * C(L(N))
   10 CONTINUE
      WRITE(6,*) A
      STOP
      END

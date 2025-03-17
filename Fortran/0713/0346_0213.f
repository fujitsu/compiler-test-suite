      REAL*8     A(10),B(10)
      DATA  A,B/10*1.0,10*1.0/
      DO 10 N=1,10
        A(N) = SIN(B(N)) * COS(B(N))
   10 CONTINUE
      WRITE(6,*) A
      STOP
      END

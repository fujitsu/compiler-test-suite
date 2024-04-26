      REAL*4 A(50)
      DATA N/1/,M/50/
      A(1) = 1.0
      A(2) = 1.0
      DO 10 I=3,M
         A(N) = FLOAT(N)
         T =  A(N) * SIN(FLOAT(N))
         N = N + 1
         A(I) = N + A(I-2) + T
   10 CONTINUE
      WRITE(6,*) A
      STOP
      END

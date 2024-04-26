      REAL*4 A(100)
      EQUIVALENCE(N,M)
      M = 1
      DO 10 I=1,100
         IF(I.GT.50) GO TO 20
            A(I) = N
            A(I+50) = N
            N = N + 1
   10 CONTINUE
   20 WRITE(6,*) A
      STOP
      END

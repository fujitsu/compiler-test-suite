      REAL*4 A(100)
      N = 1
      DO 10 I=1,100
         IF(I.GT.50) GO TO 20
            A(N) = I
            A(N+50) = I
            N = N + 1
   10 CONTINUE
   20 WRITE(6,*) A
      STOP
      END

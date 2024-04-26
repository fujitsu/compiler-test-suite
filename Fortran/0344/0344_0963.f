      REAL*4 A(100)
      N = 1
      DO 10 I=1,100
         IF(I.GT.50) GO TO 20
            A(I) = N
            A(I+50) = N
            IF(N.GT.45) GO TO 10
               N = N + 1
   10 CONTINUE
   20 WRITE(6,*) A
      STOP
      END

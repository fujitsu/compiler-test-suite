      INTEGER A(100)
      N = 5
      DO 10 I=1,100
         A(I) = I
         A(I) = A(I) + N
         N    = 10 - N
   10 CONTINUE
      WRITE(6,100) A
  100 FORMAT(1H ,I3)
      STOP
      END

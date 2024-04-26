      PROGRAM MAIN
      INTEGER A(100),B(100)
C
      A(1) = 1
      A(2) = 2
      B(1) = 1
      B(2) = 2
      DO 10 I=3,100
         A(I) = I
         B(I) = A(I)
         A(I) = A(I-2) + I
         B(I) = B(I) + I
   10 CONTINUE
C
      
      WRITE(6,100) A
      WRITE(6,100) B
  100 FORMAT(15I5)
      STOP
      END

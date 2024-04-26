      PROGRAM MAIN
      REAL*4  A(100),B(100)
      DATA Y/0.0/,N/100/
C
      A(1) = 1.0
      A(2) = 2.0
      B(1) = 1.0
      B(2) = 2.0
      DO 10 I=3,N
         A(I) = I
         B(I) = A(I)
         A(I) = A(I-2) + Y
         Y    = Y      + N
         B(I) = B(I) + I
   10 CONTINUE
C
      
      WRITE(6,100) A
      WRITE(6,100) B
  100 FORMAT(5F15.3)
      STOP
      END

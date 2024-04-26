      PROGRAM MAIN
      REAL*4  A(100),B(100)
      DATA Y/0.0/,X/0.0/,N/100/
C
      A(1) = 1.0
      A(2) = 2.0
      B(1) = 1.0
      B(2) = 2.0
      DO 10 I=3,N
         A(I) = I
         B(I) = A(I)
         IF(B(I).LT.I) THEN
            X = I + 1.0
            B(I) = B(I) + X
         ENDIF
         A(I) = A(I-2) + Y
         Y    = Y + N
   10 CONTINUE
C
      
      WRITE(6,100) A
      WRITE(6,100) B
  100 FORMAT(10F7.1)
      STOP
      END

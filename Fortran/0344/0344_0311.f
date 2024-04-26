      PROGRAM MAIN
      N = 100
      X = 5.0
      CALL SUB1(N,X)
      STOP
      END
C
      SUBROUTINE SUB1(N,X)
      REAL*4  A(100),B(100)
C
      A(1) = 1.0
      A(2) = 2.0
      B(1) = 1.0
      B(2) = 2.0
      DO 10 I=3,N
         A(I) = I
         B(I) = A(I)
         IF(X.EQ.15.0) THEN
            A(I) = A(I-2) + 1
         ENDIF
         B(I) = B(I) + I
   10 CONTINUE
C
      
      WRITE(6,100) A
      WRITE(6,100) B
  100 FORMAT(10F7.1)
      RETURN
      END

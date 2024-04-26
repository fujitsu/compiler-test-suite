      REAL*8  A(4096),B(4096),X
      DO 10 I=1,4096
         A(I) = FLOAT(I)
         X    = A(I)
         X    = SIN(X) + A(I)
         X    = X + TAN(X) / A(I)
         B(I) = X
   10 CONTINUE
      WRITE(6,100) B
  100 FORMAT(1H ,4F19.10)
      STOP
      END

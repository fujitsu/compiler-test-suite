      REAL*8  A(4096),B(4096),X
      INTEGER*2 Y
      DO 10 I=1,4096
         A(I) = FLOAT(I)
         X    = A(I)
         Y    = I
         X    = SIN(X) + A(I)
         Y    = Y + INT(A(I))
         X    = X + TAN(X) / A(I)
         Y    = Y + INT(X)
         B(I) = X
   10 CONTINUE
      WRITE(6,100) B
      WRITE(6,*) Y
  100 FORMAT(1H ,4F19.10)
      STOP
      END

      PROGRAM MAIN
      REAL A,X(10)
      DATA X/1,2,3,4,5,6,7,8,9,10/
      a = 0
      DO 10 I=1,10
         A = A + I * X(I)
 10   CONTINUE

      WRITE (6,*) A

      END

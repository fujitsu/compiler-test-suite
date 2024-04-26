      INTEGER A(-11:11),B(-11:11)
      DO 1 I = 1,10
         A(-I+1) = 1
         B(-1-I) = 1
 1    CONTINUE

      DO 2 I = 1,10
         A(I+1) = 1
         B(-1+I) = 1
 2    CONTINUE

      WRITE(6,*) A(5)
      WRITE(6,*) B(5)
      END

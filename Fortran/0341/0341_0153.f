      INTEGER A(20),B(20)
      DO 1 I = 1,10

         A(I+1+1+1+1+1+1+1+1+1) = 1
         B(I+1+1+1+1+1+1+1+1+1+1) = 1

 1    CONTINUE

      WRITE(6,*) A(15)
      WRITE(6,*) B(15)
      END

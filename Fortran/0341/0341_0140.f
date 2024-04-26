      INTEGER A(10)
      DO 1 I = 1, 1+9
         A(I) = 10
         B = A(1)
 1    CONTINUE
      write(6,*) A(1)
      write(6,*) B
      END

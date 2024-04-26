      INTEGER A,B
      A=1
      DO 1 I = 1, 10
         A = A + 1
 1    CONTINUE
c
      B=1
      DO 2 I = 1, 10
         A = B
 2    CONTINUE
c
      write(6,*) A
      write(6,*) B
      END

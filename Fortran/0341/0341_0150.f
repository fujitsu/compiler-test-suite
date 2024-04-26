      INTEGER A(10,10,10)
      DO 1 I = 1, 10
         A(1,1,1) = 1
 1    CONTINUE
c
      DO 2 I = 1, 10
         A(I,1,1) = 2
 2    CONTINUE
c
      DO 3 I = 1, 10
         A(I,I,1) = 3
 3    CONTINUE
c
      write(6,*) A(1,1,1)
      END

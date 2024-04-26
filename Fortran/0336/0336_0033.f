      PROGRAM MAIN
      INTEGER*2    A(5,5,3)
      N        =    1
      DO  1  I =    1,5
      DO  1  J =    1,5
      DO  1  K =    1,3
      A(I,J,K) =    N
    1 N        =    N+1
         write(6,99) a
99     format(10i5)
      END

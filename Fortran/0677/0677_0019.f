      INTEGER*4 A(10)/10*10/

      DO 10 I=1,10
        A(I) = 1 + A(I)
        A(I) = 2 + A(I)
10    CONTINUE

      WRITE(6,*) A
      STOP
      END

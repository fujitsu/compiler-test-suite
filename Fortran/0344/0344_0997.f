      PROGRAM MAIN
      INTEGER*8 A(100),B(100),C(100)
      DATA B/100*11111/,C/100*555555/
C
      DO 10 I=1,100
         A(I) = IAND(B(I),C(I))
   10 CONTINUE
C
      WRITE(6,100) A
  100 FORMAT(1H ,8I9)
      STOP
      END
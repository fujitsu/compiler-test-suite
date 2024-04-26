      PROGRAM MAIN
      INTEGER*8 A(100),B(100),C(100),D(100)
      INTEGER*4 E(100)
      DATA B/100*8/,C/100*2/,E/50*5,50*2/
C
      DO 10 I=1,100
         A(I) = ISHFT(B(I)+C(I),E(I))
         B(I) = ISHFT(A(I)-C(I),E(I))
         C(I) = ISHFT(B(I)/A(I),E(I))
         D(I) = ISHFT(B(I)*C(I),E(I))
   10 CONTINUE
C
      WRITE(6,100) A,B,C,D
  100 FORMAT(1H ,5I15)
      STOP
      END

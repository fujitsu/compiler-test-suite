      PROGRAM MAIN
      INTEGER*8 A(100),B(100),D(100)
      INTEGER*4 C(100)
C
      DO 10 I=1,100
         B(I) = I
         C(I) = MOD(I,3)
         D(I) = 1001-I
         A(I) = IAND(ISHFT(B(I),C(I)),D(I))
   10 CONTINUE
C
      WRITE(6,100) A
  100 FORMAT(1H ,8I9)
      STOP
      END

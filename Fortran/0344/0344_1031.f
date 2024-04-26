      PROGRAM MAIN
      INTEGER*8 A,B(100),C(100)
      DATA B/100*7775/,C/100*5777/,A/0/
C
      DO 10 I=1,100
         IF(I.GT.99) GO TO 20
         A = IAND(B(I),C(I))
   10 CONTINUE
C
   20 WRITE(6,100) A
  100 FORMAT(1H ,I9)
      STOP
      END

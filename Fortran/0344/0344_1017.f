      PROGRAM MAIN
      INTEGER*8 A(10)
C
      DO 10 I=1,10
         A(I) = I
   10 CONTINUE
C
      WRITE(6,100) A
  100 FORMAT(1H ,8I9)
      STOP
      END

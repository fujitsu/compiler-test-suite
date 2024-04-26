      PROGRAM MAIN
      INTEGER*4 A(10)
      INTEGER*8 B(10)
      DATA B/1,2,3,4,5,6,7,8,9,10/
C
      DO 10 I=1,10
         A(I) = B(I)
   10 CONTINUE
C
      WRITE(6,100) A
  100 FORMAT(1H ,8I9)
      STOP
      END

      PROGRAM MAIN
      INTEGER*8 A(10),B(10),N
      INTEGER*4 C(10)
      DATA B/10*99999/,C/1,2,3,4,5,6,7,8,9,10/
      DATA N/8888/
C
      DO 10 I=1,10
         A(I) = IEOR(B(C(I)),N)
   10 CONTINUE
C
      WRITE(6,100) A
  100 FORMAT(1H ,8I9)
      STOP
      END

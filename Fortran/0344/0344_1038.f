      PROGRAM MAIN
      INTEGER*8 A(10),B(10),N
      INTEGER*4 C(10)
      DATA B/10*33/,C/10,9,8,7,6,5,4,3,2,1/
      DATA N/9999/
C
      DO 10 I=1,10
         A(I) = IEOR(N,B(C(I)))
   10 CONTINUE
C
      WRITE(6,100) A
  100 FORMAT(1H ,8I9)
      STOP
      END

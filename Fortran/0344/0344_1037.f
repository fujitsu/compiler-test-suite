      PROGRAM MAIN
      INTEGER*8 A(10),N,M
      INTEGER*4 B(10)
      DATA N/4095/,M/1022/,B/2,4,6,8,10,1,3,5,7,9/
C
      DO 10 I=1,10
         A(B(I)) = IEOR(N,M)
   10 CONTINUE
C
      WRITE(6,100) A
  100 FORMAT(1H ,8I9)
      STOP
      END

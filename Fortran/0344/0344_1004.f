      PROGRAM MAIN
      INTEGER*8 A(100),N,M
      DATA N/4095/,M/1022/
C
      DO 10 I=1,100
         A(I) = IEOR(N,M)
   10 CONTINUE
C
      WRITE(6,100) A
  100 FORMAT(1H ,8I9)
      STOP
      END

      PROGRAM MAIN
      INTEGER*8 A(100),N,M
      DATA N/10018/,M/23332/,A/100*0/
C
      DO 10 I=1,100,2
         A(I) = IOR(N,M)
   10 CONTINUE
C
      WRITE(6,100) A
  100 FORMAT(1H ,8I9)
      STOP
      END

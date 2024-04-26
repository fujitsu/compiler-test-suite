      PROGRAM MAIN
      INTEGER*8 A(100),N,M
      DATA N/4095/,M/1022/,A/100*0/
C
      DO 10 I=1,100
         IF(I.GT.99) GO TO 20
         A(I) = IAND(N,M)
   10 CONTINUE
C
   20 WRITE(6,100) A
  100 FORMAT(1H ,8I9)
      STOP
      END

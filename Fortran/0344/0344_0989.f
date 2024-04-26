      PROGRAM MAIN
      INTEGER*8 A(100),N
      INTEGER*4 M
      DATA N/8/,M/2/
C
      DO 10 I=1,100
         A(I) = ISHFT(N,M)
   10 CONTINUE
C
      WRITE(6,100) A
  100 FORMAT(1H ,8I9)
      STOP
      END

      PROGRAM MAIN
      INTEGER*8 A(100),N
      INTEGER*4 B(100)
      DATA B/100*3/
      DATA N/8/
C
      DO 10 I=1,100
         A(I) = ISHFT(N,B(I))
   10 CONTINUE
C
      WRITE(6,100) A
  100 FORMAT(1H ,8I9)
      STOP
      END

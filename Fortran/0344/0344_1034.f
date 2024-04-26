      PROGRAM MAIN
      INTEGER*8 A(100),B(100),N
      DATA B/100*9876/,A/100*0/
      DATA N/1234/
C
      DO 10 I=100,1,-2
         A(I) = IOR(B(I),N)
   10 CONTINUE
C
      WRITE(6,100) A
  100 FORMAT(1H ,8I9)
      STOP
      END

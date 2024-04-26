      PROGRAM MAIN
      INTEGER*8 A(10),N
      REAL*8    B(10)
      DATA B/1.,2.,3.,4.,5.,6.,7.,8.,9.,10./
C
      DO 10 I=1,10
         N    = B(I)
         A(I) = N
   10 CONTINUE
C
      WRITE(6,100) A
  100 FORMAT(1H ,10I7)
      STOP
      END

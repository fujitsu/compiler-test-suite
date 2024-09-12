      PROGRAM MAIN
      REAL*8 A(100)
      DATA N/100/
      ICOUNT = 1
      DO 1000 WHILE( ICOUNT.LE.2 )
        IX = 0
        DO 100 I = 1,N
          A(I) = 20.0
          IF( IX.EQ.1 ) THEN
            A(I) = SQRT(A(I)**3)
          ELSE
            IX = 1
          ENDIF
  100   CONTINUE
        N = 10
        DO 200 I = 1,N
          A(I) = -A(I)
  200   CONTINUE
        PRINT*, A
        ICOUNT = ICOUNT + 1
 1000 CONTINUE
      STOP
      END

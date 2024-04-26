      SUBROUTINE S()
      INTEGER :: I=1
      IF (I==5) PRINT *,'*** ok ***'
      I=I+1
      END
      DO 10 I=1,5
        CALL S()
   10 CONTINUE
      END

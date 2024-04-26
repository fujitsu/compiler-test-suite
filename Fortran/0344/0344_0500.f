      PROGRAM MAIN
      INTEGER  A(10)
      DO 10 I=1,10
         A(I) = I
         A(I) = A(I) + I
         CALL SUB(I)
   10 CONTINUE
      WRITE(6,100) A
  100 FORMAT(1H ,20I3)
      STOP
      END
      SUBROUTINE SUB(J)
      INTEGER  A(10)
      DO 10 I=1,10
         A(I) = J
   10 CONTINUE
      WRITE(6,*) A
      RETURN
      END

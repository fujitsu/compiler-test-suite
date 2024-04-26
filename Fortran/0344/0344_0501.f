      PROGRAM MAIN
      INTEGER  A(10),B(10,10)
      COMMON /BLK/B
      DO 10 I=1,10
         A(I) = I
         A(I) = A(I) + I
         CALL SUB1(I)
         CALL SUB2(I)
   10 CONTINUE
      WRITE(6,100) A,B
  100 FORMAT(1H ,20I3)
      STOP
      END
      SUBROUTINE SUB1(J)
      INTEGER  B(10,10)
      COMMON /BLK/B
      DO 10 I=1,10
         B(I,J) = I
   10 CONTINUE
      RETURN
      END
      SUBROUTINE SUB2(J)
      INTEGER  A(10)
      DO 10 I=1,10
         A(I) = J
   10 CONTINUE
      WRITE(6,*) A
      RETURN
      END

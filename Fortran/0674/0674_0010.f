      PROGRAM MAIN
      INTEGER A(10),B(10)
      CALL SUB1(A,B)
      CALL SUB2(A,B)
      CALL SUB3(A,B)
      PRINT*,A,B
      STOP
      END

      SUBROUTINE SUB1(A,B)
      INTEGER A(10),B(10)
      DO 10 I = 1,10
        A(I) = 10
   10   B(I) = 0
      RETURN

      ENTRY SUB2(A,B)
      DO 20 I = 1,10
   20   A(I) = A(I)*2
      RETURN

      ENTRY SUB3(A,B)
      DO 30 I = 1,10
   30   A(I) = A(I) + B(I)
      RETURN
      END

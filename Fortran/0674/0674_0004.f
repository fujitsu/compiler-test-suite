      PROGRAM MAIN
      REAL*8 A(10)
      DATA A/10*0.0/
      N = 10
      CALL SUB(A,N)
      PRINT *,A,N
      STOP
      END

      SUBROUTINE SUB(A,N)
      REAL*8 A(N)
      IF( N.GT.10 ) GOTO 20
      DO 10 I = 1,N
   10   A(I) = I
      N = 30
   20 PRINT*,A,N
      RETURN
      END

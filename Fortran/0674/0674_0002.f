      PROGRAM MAIN
      REAL*8 A(10)
      DO 10 I = 1,10
   10   A(I) = I
      CALL SUB(A,10,1,K)
      PRINT*,A
      STOP
      END

      SUBROUTINE SUB(A,N,L,K)
      REAL*8 A(N)
      K = 10
      IF( L ) 100,200,200
  300 L = 10
      RETURN
  100 DO 10 I = 1,N
   10   A(I) = A(I)*2
      GOTO 300
  200 DO 20 I = 1,N
   20   A(I) = 0.0
      GOTO 300
      END

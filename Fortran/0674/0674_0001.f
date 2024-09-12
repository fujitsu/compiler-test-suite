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
      IF( L.EQ.1 ) THEN
        DO 10 I = 1,N
   10     A(I) = A(I)*2
      ELSE
        DO 20 I = 1,N
   20     A(I) = 0.0
      ENDIF
      L = 10
      RETURN
      END

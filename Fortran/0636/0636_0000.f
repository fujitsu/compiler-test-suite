      PROGRAM MAIN
      INTEGER A(10),B(10)
      CALL S1000A(A,B)
      CALL S1000B(A,B)
      CALL S1000C(A,B)
      PRINT*,A,B
      STOP
      END
      SUBROUTINE S1000A(A,B)
      INTEGER A(10),B(10)
      DO 10 I = 1,10
   10   A(I) = 10
      DO 11 I = 1,10
   11   B(I) = 0
      RETURN
      ENTRY S1000B(A,B)
      DO 20 I = 1,10
   20   A(I) = A(I)*2
      K = 1
      L = 10
      DO 21 I = K,L,1
   21   B(I) = B(I)*2
      RETURN
      ENTRY S1000C(A,B)
      K = 1
      L = 10
      DO 30 I = K,L
   30   A(I) = A(I) + B(I)
      DO 31 I = K+1,L
   31   A(I) = A(I-1) + B(I)
      RETURN
      END

INTEGER,PARAMETER :: N = 10
REAL :: A, B, X(N), Y(N)

DO I=1,N
 X(I) = REAL(I * 2)
 Y(I) = REAL(N * 2 - i + 1)
!print *,Y(i)
END DO

A =  1.0
B = 15.0

CALL SUB(A,B,X,Y,N)

IF (int(A).NE.int(111.0)) PRINT *,'ERROR : A = ', A
IF (int(B).NE.int( 11.0)) PRINT *,'ERROR : B = ', B

PRINT *,'PASS'

END

SUBROUTINE SUB (A, B, X, Y, N)
 INTEGER N
 REAL X(*), Y(*), A, B, A_P, B_P
!$OMP PARALLEL SHARED(X, Y, N, A, B) PRIVATE(A_P, B_P)
 A_P = 0.0
 B_P = HUGE(B_P)
 !$OMP DO PRIVATE(I)
  DO I=1,N
   A_P = A_P + X(I)
   B_P = MIN(B_P, Y(I))
  ENDDO
 !$OMP END DO
 !$OMP CRITICAL
  A = A + A_P
  B = MIN(B, B_P)
 !$OMP END CRITICAL
!$OMP END PARALLEL
END SUBROUTINE SUB

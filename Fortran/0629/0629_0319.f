      IMPLICIT NONE
      INTEGER :: i, j, k, N
      INTEGER, DIMENSION(0:10) :: foo

      N = 2
      foo = 0
      DO i = 1, 10
        DO j = 0, N
          DO k = j, N
            foo(k) = foo(k) + 1
          END DO
        END DO
      END DO
      WRITE(*,*) foo
      END

      MODULE nlsol
      INTEGER, SAVE :: step=40
      CONTAINS

      SUBROUTINE n2lrd(dr, iv, nn, p, v)
      REAL   , INTENT(IN)  :: dr(:,:)
      INTEGER, INTENT(IN)  :: iv(:)
      INTEGER, INTENT(IN)  :: nn
      INTEGER, INTENT(IN)  :: p
      REAL   , INTENT(OUT) :: v(:)
      INTEGER   :: i, j, m, step1
      REAL  :: s
      step1 = iv(step)
      DO i = 1, nn
      m = step1
        DO j = 1, p
          v(m) = dr(i,j)
          m = m + 1
        END DO
        s = d7tpr(p, v(step1:), v(step1:))
      END DO
      END SUBROUTINE n2lrd

      FUNCTION d7tpr(p, x, y) RESULT(fn_val)
      INTEGER, INTENT(IN) :: p
      REAL   , INTENT(IN) :: x(:)
      REAL   , INTENT(IN) :: y(:)
      REAL                :: fn_val
      END FUNCTION d7tpr
      END MODULE nlsol
      print *,'pass'
      end

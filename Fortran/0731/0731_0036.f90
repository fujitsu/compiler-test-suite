print *,'pass'
end
SUBROUTINE S6(A)
   IMPLICIT NONE
    interface
   PURE FUNCTION N_ROWS(X)
      INTEGER :: N_ROWS
      REAL, INTENT(IN) :: X(:,:)
   END FUNCTION N_ROWS
    end interface
   REAL :: A(:,:)
   REAL :: TEMP(N_ROWS(A))
end SUBROUTINE S6
   PURE FUNCTION N_ROWS(X)
      INTEGER :: N_ROWS
      REAL, INTENT(IN) :: X(:,:)
      N_ROWS=X(1,1)
   END FUNCTION N_ROWS

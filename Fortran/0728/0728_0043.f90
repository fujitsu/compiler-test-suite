call sub01()
print *,'pass'
end

module s6_mod
public :: n_rows, n_cols
contains
   PURE FUNCTION N_ROWS(X)
      INTEGER :: N_ROWS
      REAL, INTENT(IN) :: X(:,:)
      N_ROWS = SIZE(X,DIM=1)
   END FUNCTION N_ROWS

   PURE FUNCTION N_COLS(X)
      INTEGER :: N_COLS
      REAL, INTENT(IN) :: X(:,:)
      N_COLS = SIZE(X,DIM=2)
   END FUNCTION N_COLS
end module s6_mod

subroutine sub01()
real, dimension (:,:), allocatable :: a6
allocate(a6(5,6))
call s6(a6)

contains

SUBROUTINE S6(A)
use s6_mod
   IMPLICIT NONE
   REAL :: A(:,:)
   REAL :: TEMP(N_ROWS(A),N_COLS(A))
   REAL :: TEMP_TRANSPOSE(N_COLS(A),N_ROWS(A))

if (n_rows(a)*n_cols(a) .ne. 30 ) write(6,*) "NG"  
if (n_cols(a)  .ne. 6 ) write(6,*) "NG"
if (size(temp) .ne. 30 ) write(6,*) "NG"
if (size(temp_transpose,dim=1)  .ne. 6 ) write(6,*) "NG"
end SUBROUTINE S6

end

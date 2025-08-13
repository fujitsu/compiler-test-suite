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
real, dimension (:,:), allocatable :: a
allocate(a(5,6))
call s6(a)
print *,'pass'
contains
SUBROUTINE S6(A)
use s6_mod
   IMPLICIT NONE
integer ::i
   REAL :: A(:,:)
   REAL :: TEMP(N_ROWS(A),N_COLS(A))
   REAL :: TEMP_TRANSPOSE(N_COLS(A),N_ROWS(A))

write(15,*)n_rows(a)*n_cols(a)
write(15,*)n_cols(a)
write(15,*)2*size(temp)
write(15,*)2*size(temp_transpose,dim=1)
rewind 15
read(15,*)i;if (i/=30)write(6,*) "NG"
read(15,*)i;if (i/=6)write(6,*) "NG"
read(15,*)i;if (i/=60)write(6,*) "NG"
read(15,*)i;if (i/=12)write(6,*) "NG"
end SUBROUTINE S6
end

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

program c07
real, dimension (:,:), pointer :: a6
allocate(a6(5,6))
call s6(a6)
rewind 62
read(62,*) jj;if(jj/=30)write(6,*) "NG"
read(62,*) jj;if(jj/=6)write(6,*) "NG"
read(62,*) jj;if(jj/=30)write(6,*) "NG"
read(62,*) jj;if(jj/=6)write(6,*) "NG"
print *,'pass'
contains

SUBROUTINE S6(A)
use s6_mod
   IMPLICIT NONE
   REAL ,pointer:: A(:,:)
   REAL :: TEMP(N_ROWS(A),N_COLS(A))
   REAL :: TEMP_TRANSPOSE(N_COLS(A),N_ROWS(A))

write(62,*)n_rows(a)*n_cols(a)
write(62,*)n_cols(a)
write(62,*)size(temp)
write(62,*)size(temp_transpose,dim=1)
end SUBROUTINE S6

end program c07

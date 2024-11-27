call sub01()
call sub02()
print *,'pass'
end

module s1_mod
public :: n_rows, n_cols
contains
   PURE FUNCTION N_ROWS(X,ii,jj)
      INTEGER :: N_ROWS
      REAL, INTENT(IN) :: X(:,:)
      intent(in) :: ii,jj
      optional   :: ii,jj
      integer ii(10),jj(:)
      N_ROWS = SIZE(X,DIM=1)
   END FUNCTION N_ROWS
   PURE FUNCTION N_COLS(X,ii,jj)
      INTEGER :: N_COLS
      REAL, INTENT(IN) :: X(:,:)
      intent(in) :: ii,jj
      optional   :: jj
      integer jj(ii)
      N_COLS = SIZE(X,DIM=2)
   END FUNCTION N_COLS
end module s1_mod
subroutine sub01()
real, dimension (:,:), allocatable :: a6
allocate(a6(5,6))
call s6(a6)
contains
SUBROUTINE S6(A)
use s1_mod
   IMPLICIT NONE
   REAL :: A(:,:)
   REAL ::           TEMP(N_ROWS(A),N_COLS(A,10))
   REAL :: TEMP_TRANSPOSE(N_COLS(A,10),N_ROWS(A))
if (n_rows(a)*n_cols(a,10) .ne. 30 ) write(6,*) "NG"  
if (n_cols(a,10)  .ne. 6 ) write(6,*) "NG"
if (size(temp) .ne. 30 ) write(6,*) "NG"
if (size(temp_transpose,dim=1)  .ne. 6 ) write(6,*) "NG"
end SUBROUTINE S6
end

module s2_mod
public :: n_rows, n_cols
contains
   PURE FUNCTION N_ROWS(X,ii,jj)
      INTEGER :: N_ROWS
      REAL, INTENT(IN) :: X(:,:)
      intent(in) :: ii,jj
      optional   :: ii,jj
      integer ii(int(10)),jj(:)
      N_ROWS = SIZE(X,DIM=1)+10-size(ii)
   END FUNCTION N_ROWS
   PURE FUNCTION N_COLS(X,ii,jj)
      INTEGER :: N_COLS
      REAL, INTENT(IN) :: X(:,:)
      intent(in) :: ii,jj
      optional   :: jj
      integer jj(ii)
      N_COLS = SIZE(X,DIM=2)+ii-size(jj)
   END FUNCTION N_COLS
end module s2_mod
subroutine sub02()
real, dimension (:,:), allocatable :: a6
allocate(a6(5,6))
call s6(a6)
contains
SUBROUTINE S6(A)
use s1_mod
   IMPLICIT NONE
   REAL :: A(:,:)
   REAL ::           TEMP(N_ROWS(A),N_COLS(A,10))
   REAL :: TEMP_TRANSPOSE(N_COLS(A,10),N_ROWS(A))
if (n_rows(a)*n_cols(a,10) .ne. 30 ) write(6,*) "NG"
if (n_cols(a,10)  .ne. 6 ) write(6,*) "NG"
if (size(temp) .ne. 30 ) write(6,*) "NG"
if (size(temp_transpose,dim=1)  .ne. 6 ) write(6,*) "NG"
end SUBROUTINE S6
end

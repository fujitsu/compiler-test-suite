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
   PURE FUNCTION N_ROWSA(X,k,kk)
      INTEGER :: N_ROWSA
      INTEGER,intent(in) :: k,kk
      REAL, INTENT(IN) :: X(k,kk)
      N_ROWSA = SIZE(X,DIM=1)
   END FUNCTION N_ROWSA
   PURE FUNCTION N_COLSA(X,k,kk)
      INTEGER :: N_COLSA
      INTEGER,intent(in) :: k,kk
      REAL, INTENT(IN) :: X(k,kk)
      N_COLSA = SIZE(X,DIM=2)
   END FUNCTION N_COLSA
end module s6_mod

program c07
  real, dimension (:,:), allocatable :: a6
  character(len=80) :: filename1
  do m1=11,30
     write(filename1, '(a, i2.2, a)') 'work1', m1, '.dat'
     open(unit=m1, file=trim(filename1), status='new')
  enddo
allocate(a6(5,6))
a6=0
do m1=11,30
call s6(a6,5,6,m1)
rewind m1
read(m1,*) jj;if(jj/=30)write(6,*) "NG"
read(m1,*) jj;if(jj/=6)write(6,*) "NG"
read(m1,*) jj;if(jj/=30)write(6,*) "NG"
read(m1,*) jj;if(jj/=6)write(6,*) "NG"
read(m1,*) jj;if(jj/=30)write(6,*) "NG"
read(m1,*) jj;if(jj/=6)write(6,*) "NG"
read(m1,*) jj;if(jj/=30)write(6,*) "NG"
read(m1,*) jj;if(jj/=6)write(6,*) "NG"
read(m1,*) jj;if(jj/=30)write(6,*) "NG"
read(m1,*) jj;if(jj/=6)write(6,*) "NG"
read(m1,*) jj;if(jj/=30)write(6,*) "NG"
read(m1,*) jj;if(jj/=6)write(6,*) "NG"
end do
print *,'pass'
contains

SUBROUTINE S6(A,k,kk,m1)
use s6_mod
   IMPLICIT NONE
   INTEGER,intent(in) :: k,kk,m1
   REAL :: A(:,:)
   REAL :: TEMP(N_ROWS(A+A),N_COLS(A+A))
   REAL :: TEMP_TRANSPOSE(N_COLS(A+A),N_ROWS(A+A))
   REAL :: TEMP1(N_ROWSA(A+A,k,kk),N_COLSA(A+A,k,kk))
   REAL :: TEMP_TRANSPOSE1(N_COLSA(A+A,k,kk),N_ROWSA(A+A,k,kk))
   REAL :: TEMP2(N_ROWS(A),N_COLS(A))
   REAL :: TEMP_TRANSPOSE2(N_COLS(A),N_ROWS(A))
   REAL :: TEMP3(N_ROWSA(A,k,kk),N_COLSA(A,k,kk))
   REAL :: TEMP_TRANSPOSE3(N_COLSA(A,k,kk),N_ROWSA(A,k,kk))
   REAL :: TEMP4(N_ROWSA(A,N_ROWS(A),N_COLS(A+A)),N_COLSA(A,N_ROWS(A),N_COLS(A+A)))
   REAL :: TEMP_TRANSPOSE4(N_COLSA(A,N_ROWS(A),N_COLS(A+A)),N_ROWSA(A,N_ROWS(A),N_COLS(A+A)))

write(m1,*)n_rows(a)*n_cols(a)
write(m1,*)n_cols(a)
write(m1,*)size(temp)
write(m1,*)size(temp_transpose,dim=1)
write(m1,*)size(temp1)
write(m1,*)size(temp_transpose1,dim=1)
write(m1,*)size(temp2)
write(m1,*)size(temp_transpose2,dim=1)
write(m1,*)size(temp3)
write(m1,*)size(temp_transpose3,dim=1)
write(m1,*)size(temp4)
write(m1,*)size(temp_transpose4,dim=1)
temp=-1
temp1=1
temp2=2
temp3=3
temp4=4
TEMP_TRANSPOSE=-11
TEMP_TRANSPOSE1=11
TEMP_TRANSPOSE2=12
TEMP_TRANSPOSE3=13
TEMP_TRANSPOSE4=14
if (any(temp/=-1))write(6,*) "NG"
if (any(temp1/=1))write(6,*) "NG"
if (any(temp2/=2))write(6,*) "NG"
if (any(temp3/=3))write(6,*) "NG"
if (any(temp4/=4))write(6,*) "NG"
if (any(temp_transpose/=-11))write(6,*) "NG"
if (any(temp_transpose1/=11))write(6,*) "NG"
if (any(temp_transpose2/=12))write(6,*) "NG"
if (any(temp_transpose3/=13))write(6,*) "NG"
if (any(temp_transpose4/=14))write(6,*) "NG"
end SUBROUTINE S6

end program c07

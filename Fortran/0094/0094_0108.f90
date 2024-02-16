program pro
implicit none
interface
  subroutine sub(n,x)
    integer :: n(2,2)
    real,optional :: x(2,2)
  end subroutine sub
end interface
integer, allocatable :: n1(:,:)
real, allocatable :: x1(:,:)
allocate(n1(2,2),x1(2,2))
n1=1
x1=2
call sub(n1,x1)
end

subroutine sub(n,x)
  implicit none
  integer :: n(2,2)
  real, optional :: x(2,2)
  real :: y(2,2)

 y=BESSEL_JN(n=n,x=x)
    if( .not.(y(1,1)>0.56 .and. y(1,1)<0.58))  print *,101
    if( .not.(y(1,2)>0.56 .and. y(1,2)<0.58))  print *,102
    if( .not.(y(2,1)>0.56 .and. y(2,1)<0.58))  print *,103
    if( .not.(y(2,2)>0.56 .and. y(2,2)<0.58))  print *,104
print *, "Pass"
end subroutine sub

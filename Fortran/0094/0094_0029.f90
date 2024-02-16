module m1
  integer, allocatable :: n(:)
  real, allocatable :: x(:)
end module m1
program pro
use m1
implicit none
allocate(n(4))
allocate(x(4))

n(1)= 1
n(2)= 2
n(3)= 1
n(4)= 2
x(1)= 1.4
x(2)= 2.0
x(3)= 1.8
x(4)= 2.2
call sub(n,x)
contains
subroutine sub(a,b)
  implicit none
  integer :: a(2,*)
  real :: b(2,*)
  real :: y(2,2)
  y=BESSEL_JN(n=a(:,:2),x=b(:,:2))
    if( .not.(y(1,1)>0.53 .and. y(1,1)<0.55))  print *,101
    if( .not.(y(2,1)>0.34 .and. y(2,1)<0.36))  print *,102
    if( .not.(y(1,2)>0.57 .and. y(1,2)<0.59))  print *,103
    if( .not.(y(2,2)>0.38 .and. y(2,2)<0.40))  print *,104
    print*,"pass"
end subroutine sub
end

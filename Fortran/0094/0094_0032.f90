module m1
  integer, allocatable :: n(:,:)
  class(*), allocatable :: x(:,:)
  real :: y(2,2)
end module m1
program pro
use m1
implicit none
allocate(integer :: n(2,2))
allocate(real(kind=8) :: x(2,2))
n(1,1)= 1
n(1,2)= 2
n(2,1)= 1
n(2,2)= 2

select type(x)
type is (real(kind=8))
x(1,1)= 1.4
x(1,2)= 2.0
x(2,1)= 1.8
x(2,2)= 2.2
y=BESSEL_JN(n,x)
class default
print*,105
end select
if( .not.(y(1,1)>0.53 .and. y(1,1)<0.55))  print *,101
if( .not.(y(2,1)>0.57 .and. y(2,1)<0.59))  print *,102
if( .not.(y(1,2)>0.34 .and. y(1,2)<0.36))  print *,103
if( .not.(y(2,2)>0.38 .and. y(2,2)<0.40))  print *,104
print*,"pass"
end

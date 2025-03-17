module mdef
type tdef
  real(16)::a
  real(16)::b
  real(16)::c
  real(16)::d
end type
type t2def
  type(tdef)::n(2)
end type
end module

use mdef
real(16)::k(3,2)

type(t2def)::tt(3)
tt(1)%n%a=20  
tt(1)%n%b=20  
tt(1)%n%c=20  
tt(1)%n%d=50  
tt%n(2)%a=100  
tt%n(2)%b=100  
tt%n(2)%c=100  
tt%n(2)%d=50  

tt(1)%n(1)%a=80
tt(1)%n(1)%b=80
tt(1)%n(1)%c=80
tt(1)%n(1)%d=100
tt(1)%n(2)%a=218
tt(1)%n(2)%b=210
tt(1)%n(2)%c=212
tt(1)%n(2)%d=110

tt(2)%n(1)%a=80
tt(2)%n(1)%b=100
tt(2)%n(1)%c=90
tt(2)%n(1)%d=95
tt(2)%n(2)%a=192
tt(2)%n(2)%b=214
tt(2)%n(2)%c=202
tt(2)%n(2)%d=100

tt(3)%n(1)%a=80
tt(3)%n(1)%b=210
tt(3)%n(1)%c=212
tt(3)%n(1)%d=105
tt(3)%n(2)%a=200
tt(3)%n(2)%b=210
tt(3)%n(2)%c=212
tt(3)%n(2)%d=105

call sub(tt,k)
if ( abs(sum(k) - 787.83333) < 0.0001 ) then
  print *,'pass'
else
  print *,k(1,:)
  print *,k(2,:)
  print *,k(3,:)
  print *,sum(k)
endif
end

subroutine sub(tt,k)
use mdef
real(16)::k(3,2)
type(t2def)::tt(3)
do i=1,3
do j=1,2
k(i,j)=(tt(i)%n(j)%a+tt(i)%n(j)%b+tt(i)%n(j)%c)/6.0+tt(i)%n(j)%d/2.0
end do
end do
end

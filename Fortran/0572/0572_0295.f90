MODULE mod1
TYPE point
  integer :: x
  contains
  procedure::sub
END TYPE point
contains
function sub (px,ax) result (c)
  class(point), INTENT(in) :: px
  type(point), INTENT(in) :: ax(..)
  type(point)::c
  c%x=px%x+10
  if(lbound(ax,dim=1)/=1)print*,110
  END function sub
END MODULE mod1
program main
use mod1
type(point) ::a,b(2,2,2),c
a%x=5
b%x=1
c = sub(a,b)
if(c%x /= 15)print*,111
print*,"PASS"
end
  


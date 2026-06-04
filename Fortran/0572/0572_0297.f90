MODULE mod1
TYPE point
  integer :: x
  contains
  procedure::sub
  generic::operator(-)=>sub
END TYPE point
contains
function sub (px,ax) result (c)
  class(point), INTENT(in) :: px
  type(point), INTENT(in) :: ax(..)
  type(point)::c
  c%x=px%x-10
  if(lbound(ax,dim=1)/=1)print*,110
  if(lbound(ax,dim=2)/=1)print*,111
  if(lbound(ax,dim=3)/=1)print*,112
  if(ubound(ax,dim=1)/=2)print*,113
  if(ubound(ax,dim=2)/=2)print*,114
  if(ubound(ax,dim=3)/=2)print*,115
  END function sub
END MODULE mod1
program main
use mod1
type(point) ::a,b(3:4,4:5,1:2),c
a%x=20
b%x=10
c=a-b
if(c%x /= 10)print*,111
print*,"PASS"
end
  


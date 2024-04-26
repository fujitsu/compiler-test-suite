MODULE mod1
TYPE point
  integer :: x
  contains
  procedure::sub
  generic::operator(+)=>sub
END TYPE point
contains
function sub (px,ax) result (c)
  class(point), INTENT(in) :: px
  type(point), INTENT(in):: ax(5)
  type(point)::c
  c%x=px%x+10
  if(lbound(ax,dim=1)/=1)print*,110
  END function sub
END MODULE mod1
program main
use mod1
type(point) ::a,c
type(point),pointer ::ptr(:)
integer::k=1
a%x=5
allocate(ptr(5))
ptr%x =6
c=a+ptr(1:5:k)
if(c%x /= 15)print*,111
print*,"PASS"
end
  


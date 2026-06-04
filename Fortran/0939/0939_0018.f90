MODULE mod1
IMPLICIT NONE

TYPE point
integer:: x
contains
 procedure,pass::assign_point
 generic ::assignment(=) =>assign_point
END TYPE point

CONTAINS
impure elemental  SUBROUTINE assign_point (px,ax)
  class(point), INTENT(inout),volatile :: px 
  integer, INTENT(in),asynchronous:: ax
  px%x=ax
  END SUBROUTINE assign_point

END MODULE mod1

use mod1
integer::vv(3)=[1,2,3],rr(3)
type(point)::ii(3)
rr=[10,20,30]
ii=rr(vv)
if(ii(1)%x /= 10 .and. ii(2)%x /= 20 .and. ii(3)%x /= 30) print*,"101"
rr=[40,50,60]
ii(vv)=rr
if(ii(1)%x /= 40 .and. ii(2)%x /= 50 .and. ii(3)%x /= 60) print*,"102"
print*,"PASS"

end

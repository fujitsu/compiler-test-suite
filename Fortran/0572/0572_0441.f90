MODULE mod4
IMPLICIT NONE

TYPE point
REAL :: x, y
contains
 procedure,pass::assign_point
 generic ::assignment(=) =>assign_point
END TYPE point
CONTAINS
 recursive SUBROUTINE assign_point (px,ax)
  class(point), INTENT(inout) :: px 
  integer, INTENT(in) :: ax(..)
  px%x=10.99 
  if(kind(ax)/=4)print*,201
  END SUBROUTINE assign_point

END MODULE mod4

use mod4

REAL :: r1(3),r2(4,4)
TYPE (point) :: a
a=shape(r2)
if(a%x /= 10.99)print*,101
a=shape(r1)
if(a%x /= 10.99)print*,102
a=shape(r2,4)
if(a%x /= 10.99)print*,103
print*,"pass"
end

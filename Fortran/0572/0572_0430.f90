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
  REAL, INTENT(in) :: ax(..)
  px%x=10.99 
  if(kind(ax)/=4)print*,201
  END SUBROUTINE assign_point

END MODULE mod4

use mod4

REAL :: r,r1(3),r2(4,4)
TYPE (point) :: a
        r=2
        r1=3
        r2=4
r=5
a=r
if(a%x /= 10.99)print*,101
a%x=0
a=r1
if(a%x /= 10.99)print*,102
a%x=0
a=r2
if(a%x /= 10.99)print*,103
a%x=0
a=r2(1:4:2,4)
if(a%x /= 10.99)print*,104
print*,"PASS"
end

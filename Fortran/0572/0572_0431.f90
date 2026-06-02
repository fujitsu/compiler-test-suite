MODULE mod4
IMPLICIT NONE

TYPE point
REAL :: x, y
END TYPE point
interface assignment(=)
recursive SUBROUTINE assign_point (px,ax)
  import point
        class(point), INTENT(inout) :: px
  REAL, INTENT(in) :: ax(..)
  END SUBROUTINE assign_point
end interface

END MODULE mod4

use mod4

REAL :: r,r1(3),r2(4,4)
TYPE (point) :: a
        r=2
        r1=3
        r2=4
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
recursive SUBROUTINE assign_point (px,ax)
  use mod4
        class(point), INTENT(inout) :: px
  REAL, INTENT(in) :: ax(..)
  px%x=10.99 
  if(kind(ax)/=4)print*,201
  END SUBROUTINE assign_point

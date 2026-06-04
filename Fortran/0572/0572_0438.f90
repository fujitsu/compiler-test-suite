MODULE mod1
integer::cc=0
TYPE point
  integer :: x
END TYPE point
interface operator(.not.)
 function sub (px) result (c)
import point 
type(point), INTENT(in) :: px(..)
  character::c
  END function sub
  end interface
END MODULE mod1

program main
use mod1
type(point)::b,b1(2),b2(2,3),b3(5,6,7)
character::c='a'
b%x=1
b1%x=2
b2%x=3
b3%x=4
c=.not.b
c=.not.b1
c=.not.b2
c=.not.b3
if(cc /=4 )print*,102
if(c/='a' )print*,103

print*,"PASS"
end
  
 function sub (px) result (c)
use mod1 
type(point), INTENT(in) :: px(..)
  character::c
  if(is_contiguous(px) .neqv. .true.)print*,101
  c='a'
  cc=cc+1
  END function sub


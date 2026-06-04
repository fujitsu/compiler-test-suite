MODULE mod1
integer::cc=0
interface operator(.not.)
 function sub (px) result (c)
integer, INTENT(in) :: px(..)
  character::c
  END function sub
  end interface
END MODULE mod1

program main
use mod1
integer::b,b1(2),b2(2,3),b3(5,6,7)
character::c='a'
        b=2
        b1=3
        b2=4
        b3=5

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
integer, INTENT(in) :: px(..)
  character::c
  if(is_contiguous(px) .neqv. .true.)print*,101
  c='a'
  cc=cc+1
  END function sub


module mod1
contains
subroutine s()
integer,pointer:: i1 => NULL() 
integer,pointer,external:: i2 => NULL()
integer,pointer:: i3
external :: i3
external :: i4 
integer,pointer:: i4 => NULL()
pointer:: i51
integer,external :: i51 => NULL()
pointer:: i55
external :: i55
integer :: i55
pointer:: i58
integer :: i58
external :: i58
intrinsic :: iabs
i1=1
i=2
i2 => iabs
ii3 = iabs(i)
if (ii3.ne.iabs(2)) print *,'fail'
end subroutine
end module
use mod1
print *,"pass"
end

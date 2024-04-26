module m
contains
subroutine sub(iostat1,iostat2)
 integer :: a,b
 integer :: iostat1,iostat2
entry ent(iostat1,iostat2)
 read (*,*,iostat=iostat1) a
 read (*,*,iostat=iostat2) b
 if (iostat1==0 .and. iostat2==0) then
 end if
end subroutine
end module

use m
integer :: x,y
x=0
y=0
call sub(x,x)
call ent(y,y)
print *,'pass'
end

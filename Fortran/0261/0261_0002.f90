Module m
contains
subroutine s()
 call prime(sub,act)
 print*,"pass"
contains
 function act(d)
 integer :: d
 integer :: act
 act=d+2
 end function
 subroutine sub(d1)
 integer :: d1
 d1=d1-1
 end subroutine
end subroutine

subroutine prime(dmy2,dmy1)
interface
function dmy1(x)
integer :: x
integer :: dmy1
end function
subroutine dmy2(y)
integer :: y
end subroutine
end interface
integer :: res
integer :: a2=6
res=dmy1(8)
call dmy2(a2)
if(res .ne. 10)print*,"101"
if(a2 .ne. 5)print*,"102"
end subroutine
end module

use m
call s()
end


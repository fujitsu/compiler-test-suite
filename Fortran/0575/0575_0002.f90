Module m
contains
subroutine s()
if(fun(act) .ne. 6)print*,"101"
print*,"pass"
contains
subroutine act(d)
integer :: d
d=d+2
end subroutine
end subroutine

function fun(proc)
integer :: fun
interface
subroutine proc(x)
integer :: x
end subroutine
end interface
integer :: a
a=4
call proc(a)
fun=a
end function
end module

use m
call s()
end



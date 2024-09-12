Module m
contains
subroutine s()
if(fun(act) .ne. 6)print*,"101"
print*,"pass"
contains
function act(d)
integer :: d
integer :: act
act=d+2
end function
end subroutine

function fun(proc)
interface
function proc(x)
integer :: x
integer :: proc
end function
end interface
fun=proc(4)
end function
end module

use m
call s()
end



module mod1
type ty
integer :: jj
end type
interface
subroutine ext_sub(dmy)
import ty
integer :: dmy
end subroutine
end interface
contains
function fun()
integer :: fun
type,extends(ty) :: tty
contains
procedure,nopass :: prc_tty=>ext_sub
end type
integer :: xx
type(tty) :: obj
 call obj%prc_tty(xx)
fun = xx
end function
end module
use mod1
print*,fun()
if (fun().EQ.5 ) then
    print*,"pass"
else
    print*, "fail"
endif
end
subroutine ext_sub(dmy)
integer :: dmy
dmy = 5
end subroutine

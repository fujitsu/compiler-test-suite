module mod1
type ty
integer :: jj
end type

contains
subroutine mod_fun(dmy)
integer :: dmy
dmy = 7
end subroutine

function fun()
integer :: fun 
type,extends(ty) :: tty
contains
procedure,nopass :: prc_tty=>mod_fun
end type
type(tty) :: obj
integer :: xx
call obj%prc_tty(xx)
fun = xx 
end function
end module
use mod1
print*,fun()
if (fun().EQ. 7) then
    print*,"pass"
else
    print*, "fail"
endif
end

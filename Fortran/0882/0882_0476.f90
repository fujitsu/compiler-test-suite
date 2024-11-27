module mod1
type ty
integer :: jj
end type

contains
function mod_fun(dmy)
class(ty) :: dmy
integer :: mod_fun 
dmy%jj = 2
mod_fun = dmy%jj
end function
end module
use mod1
type,extends(ty) :: tty
contains
procedure,nopass :: prc_tty=>mod_fun
end type
type(tty) :: obj
if (obj%prc_tty(obj).EQ. 2) then
    print*,"pass"
else
    print*, "fail"
endif
end

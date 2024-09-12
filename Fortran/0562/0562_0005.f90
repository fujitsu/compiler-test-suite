module m1
type ty1
complex::c1
end type
type ty2
type(ty1)::obj
end type

contains
subroutine sub(dmy)
complex,pointer,intent(in)::dmy
if (.NOT.associated(dmy))print*,"error"
dmy = (1.50,-2.50)
end subroutine
end module

use m1
type(ty2),target::tar
call sub(tar%obj%c1)
print*,"Pass"
if (tar%obj%c1 /= (1.50,-2.50))print*,101
end

module m1
type ty1
integer::ii
end type
type,extends(ty1)::ty2
character(LEN=10)::ch
end type
end module

use m1
type(ty2)::tar
call s1(tar)
if (tar%ch /= "fortran")print*,104
contains
subroutine s1(d1)
class(ty2),target::d1
call s2(d1)
if (d1%ii /= 10)print*,103
end subroutine

subroutine s2(dmy)
class(ty2),pointer,intent(in)::dmy
if (.not.associated(dmy))print*,"error",101
if (LEN(dmy%ch)/=10)print*,102
select type(dmy)
class is (ty2)
        print*,"pass"
end select
dmy%ch = "fortran"
dmy%ii = 10
end subroutine
end

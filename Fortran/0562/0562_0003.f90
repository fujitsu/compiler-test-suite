module m1
type ty1
character(LEN=20)::ch
end type
type ty2
type(ty1)::obj
end type
contains
integer function fun(dmy)
character(LEN=*),pointer,intent(in)::dmy
if (.NOT.associated(dmy))Print*,"error"
dmy = "FORTRAN"
fun=10
end function
end module

use m1
type(ty2),target::tar
call sub
contains
subroutine sub
integer::ii
ii= fun(tar%obj%ch)
if (tar%obj%ch /= "FORTRAN")print*,101
print*,"Pass"
if(ii/=10)print*,"error"
end subroutine
end

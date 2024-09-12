use, intrinsic :: iso_c_binding 
type ty
integer(kind=8)::i(10,10)
character(len=4)::c(10,10)
real::rr(10,10)
complex::cc(10,10)
end type

type(ty),target::obj,obj2(4,4)

call sub(obj,obj2)

print*,"PASS"
contains
subroutine sub(d1,d2)
use, intrinsic :: iso_c_binding 
type(*),target::d1,d2(2,*)


if(c_associated(c_loc(d1),c_loc(obj)) .neqv. .true.)print*,101
if(c_associated(c_loc(d2),c_loc(obj2)) .neqv. .true.)print*,102

end subroutine

end

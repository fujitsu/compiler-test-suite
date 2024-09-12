use, intrinsic :: iso_c_binding 
integer(kind=8),target::i(10,10)
character(len=4),target::c(10,10)
real,target::rr(10,10)
complex,target::cc(10,10)
call sub(i,c,rr,cc)

print*,"PASS"
contains
subroutine sub(d1,d2,d3,d4)
use, intrinsic :: iso_c_binding 
type(*),target::d1(2,*),d2(2,*),d3(2,*),d4(2,*)


if(c_associated(c_loc(d1),c_loc(i)) .neqv. .true.)print*,101
if(c_associated(c_loc(d2),c_loc(c)) .neqv. .true.)print*,102
if(c_associated(c_loc(d3),c_loc(rr)) .neqv. .true.)print*,103
if(c_associated(c_loc(d4),c_loc(cc)) .neqv. .true.)print*,104

end subroutine

end

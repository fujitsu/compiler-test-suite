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
type(*),target::d1(..),d2(..),d3(..),d4(..)

call sub2(d1,d2,d3,d4)

if(c_associated(c_loc(d1),c_loc(i)) .neqv. .true.)print*,101
if(c_associated(c_loc(d2),c_loc(c)) .neqv. .true.)print*,102
if(c_associated(c_loc(d3),c_loc(rr)) .neqv. .true.)print*,103
if(c_associated(c_loc(d4),c_loc(cc)) .neqv. .true.)print*,104


end subroutine
subroutine sub2(b1,b2,b3,b4)
use, intrinsic :: iso_c_binding 
type(*),target::b1(..),b2(..),b3(..),b4(..)


if(c_associated(c_loc(b1),c_loc(i)) .neqv. .true.)print*,201
if(c_associated(c_loc(b2),c_loc(c)) .neqv. .true.)print*,202
if(c_associated(c_loc(b3),c_loc(rr)) .neqv. .true.)print*,203
if(c_associated(c_loc(b4),c_loc(cc)) .neqv. .true.)print*,204


end subroutine

end

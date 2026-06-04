
use, intrinsic :: iso_c_binding 

integer,target::a

call sub(loc(a),c_loc(a))

print*,"PASS"
contains

subroutine sub(d1,d2)
type(*),optional::d1(..),d2(..)

if(present(d1).neqv. .true.)print*,101
if(present(d2).neqv. .true.)print*,102

if(is_contiguous(d1).neqv. .true.)print*,102
if(is_contiguous(d2).neqv. .true.)print*,102

end subroutine

end

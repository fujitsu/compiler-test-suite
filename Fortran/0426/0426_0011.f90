module m0
type xyz
 integer :: a
   contains
   procedure :: prc
end type xyz
  type (xyz),protected            :: v3,v4
contains
 subroutine prc( this )
  class(xyz):: this
  this%a = 1
 end subroutine
end
module m1
use m0
contains
 function foo( v1 ) result(v2)
  type (xyz),intent(out):: v1
  type (xyz)            :: v2
  call v1% prc 
  call v2% prc
  call v3% prc
if (v3%a/=1) print *,103
 end function
end module

use m1
type(xyz):: w1,w2
w1=foo(w2) 
if (w1%a/=1) print *,101
if (w2%a/=1) print *,102
  call v4% prc
if (v4%a/=1) print *,104
print *,'pass'
end

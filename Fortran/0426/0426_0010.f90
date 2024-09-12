module m1
type xyz
 integer :: a
   contains
   procedure :: prc
end type xyz
contains
 function foo( v1 ) result(v2)
  type (xyz),intent(out):: v1
  type (xyz)            :: v2
  call v1% prc 
  call v2% prc
 end function
 subroutine prc( this )
  class(xyz):: this
  this%a = 1
 end subroutine
end module

use m1
type(xyz):: w1,w2
w1=foo(w2) 
if (w1%a/=1) print *,101
if (w2%a/=1) print *,102
print *,'pass'
end

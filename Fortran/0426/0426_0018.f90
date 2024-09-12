module m0
type xyz
 integer :: a
   contains
   procedure,nopass :: prc1
   procedure,nopass :: prc2
  generic:: gen1=>prc1
  generic:: gen2=>prc2
end type xyz
contains
 subroutine prc1( this )
  class(xyz),intent(out):: this
  this%a = 1
 end subroutine
 function   prc2( this ) result(r)
  class(xyz):: this
  integer:: r
  this%a = 1
  r=2
 end function
end
module m1
use m0
contains
 function foo2( v1 ) result(v2)
  type (xyz),intent(out):: v1
  type (xyz)            :: v2
  if ( v1% gen2(v1) /= 2) print *,301
  if ( v2% gen2(v2) /= 2) print *,302
 end function
 function foo1( v1 ) result(v2)
  type (xyz),intent(out):: v1
  type (xyz)            :: v2
  call v1% gen1(v1)
  call v2% gen1(v2)
 end function
end module
module m2
use m1
type(xyz):: w1,w2,w3,w4
contains
subroutine s1
w1=foo1(w2) 
if (w1%a/=1) print *,101
if (w2%a/=1) print *,102
w3=foo2(w4) 
if (w3%a/=1) print *,103
if (w4%a/=1) print *,104
end subroutine
end
use m2
call s1
print *,'pass'
end

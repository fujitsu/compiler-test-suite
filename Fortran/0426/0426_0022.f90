module m1
type xyz
 integer :: a
   contains
   procedure :: prc
   generic:: gen=>prc
end type xyz
contains
 function foo( v1 ) result(v2)
  type (xyz),intent(out):: v1(:)
  type (xyz)            :: v2(2)
  type (xyz),allocatable:: v3(:)
  type (xyz),pointer    :: v4(:)
  call v1% gen 
  call v2% gen
allocate(v3(2),v4(2))
  call v3% gen
if (any(v3%a/=[1,1])) print *,201
  call v4% gen
if (any(v4%a/=[1,1])) print *,301
 end function
elemental subroutine prc( this )
  class(xyz),intent(inout):: this
  this%a = 1
 end subroutine
end module

use m1
type(xyz):: w1(2),w2(2)
w1=foo(w2) 
if (any(w1%a/=[1,1])) print *,101
if (any(w2%a/=[1,1])) print *,102
print *,'pass'
end

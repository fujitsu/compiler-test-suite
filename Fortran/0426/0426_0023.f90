module m1
type xyz
 integer :: a
   contains
   procedure :: prc
   generic:: gen=>prc
end type xyz
type abc
  integer::b
  type(xyz):: g
end type
contains
 function foo( v1 ) result(v2)
  type (abc),intent(out):: v1(:)
  type (abc)            :: v2(2)
  type (abc),allocatable:: v3(:)
  type (abc),pointer    :: v4(:)
  call v1%g% gen 
  call v2%g% gen
allocate(v3(2),v4(2))
  call v3%g% gen
if (any(v3%g%a/=[1,1])) print *,201
  call v4%g% gen
if (any(v4%g%a/=[1,1])) print *,301
 v2%b=0
 end function
elemental subroutine prc( this )
  class(xyz),intent(inout):: this
  this%a = 1
 end subroutine
end module

use m1
type(abc):: w1(2),w2(2)
w1=foo(w2) 
if (any(w1%g%a/=[1,1])) print *,101
if (any(w2%g%a/=[1,1])) print *,102
print *,'pass'
end

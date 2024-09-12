module m1
type xyz
 integer :: a
   contains
   procedure :: prc
end type xyz
type abc
 integer::z
 type(xyz):: z1
end type
contains
 function foo( v1 ) result(v2)
  type (abc),intent(out):: v1
  type (abc)            :: v2
  type (abc),pointer    :: v3
  type (abc),allocatable:: v4
  allocate(v3,v4)
  call v1%z1% prc 
  call v2%z1% prc
  call v3%z1% prc
if (v3%z1%a/=1) print *,111
  call v4%z1% prc
if (v4%z1%a/=1) print *,112
 v2%z=0
 end function
 subroutine prc( this )
  class(xyz):: this
  this%a = 1
 end subroutine
end module

use m1
type(abc):: w1,w2
w1=foo(w2) 
if (w1%z1%a/=1) print *,101
if (w2%z1%a/=1) print *,102
print *,'pass'
end

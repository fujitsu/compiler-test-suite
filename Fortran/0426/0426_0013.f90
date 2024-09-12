module m0
private
public xyz,gen,w1,chk,v3,v4,chk1
type xyz
 integer :: a
   contains
   procedure :: prc
   procedure :: chk
  generic:: gen=>prc
end type xyz
  type (xyz)   :: v3,v4
type(xyz):: w1
contains
 subroutine prc( this )
  class(xyz),intent(out):: this
  this%a = 1
 end subroutine
 function wf() result(r)
  class(xyz),allocatable::r
  allocate(r)
  r%a = 1
 end function
 subroutine chk(d)
  class(xyz),intent(in):: d
  if (d%a/=1)print *,301 
 end subroutine
 subroutine chk1
  if (w1%a/=1)print *,302 
  if (v4%a/=1)print *,304 
 end subroutine
end
module m1
use m0
private
public:: chk,chk1,foo,w1,v4
contains
 function foo( v1 ) result(v2)
  type (xyz),intent(out):: v1
  type (xyz)            :: v2
  call v1% gen 
  call v2% gen
  call v3% gen
if (v3%a/=1) print *,103
 end function
end module
module m2
use m1
private
public:: s1
contains
subroutine s1
call chk(foo(w1)) 
  call v4% gen
call chk1
end subroutine
end
use m2
call s1
print *,'pass'
end

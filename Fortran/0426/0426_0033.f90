module mm
private
public xyz,gen
type xyz
 integer :: a
   contains
   procedure :: prc
   procedure,nopass :: prc2
  generic:: gen=>prc
  generic:: gen=>prc2
end type xyz
contains
 subroutine prc( this )
  class(xyz),intent(out):: this
  this%a = 1
 end subroutine
 subroutine prc2(ii )
  write(10,*) ii
 end subroutine
end
module m1
use mm
private
public::xyz,foo2
contains
 function foo() result(v2)
  type (xyz):: v2
  call v2%gen (1)
 end function
 function foo2() result(v2)
  type (xyz):: v2
  v2%a=1
  call v2%gen (109)
 end function
end module
module m2
use m1,only:xyz
private
public::chk
contains
subroutine chk(x)
type(xyz)::x
if (x%a/=1) print *,101
rewind 10
read(10,*) k
 if (k/=109) print *,102
end subroutine
end
module m3
use m1,only:foo2
use m2,only:chk
private
public:: s1
contains 
subroutine s1
call chk(foo2())
end subroutine
end
use m3,only:s1
print *,'pass'
end

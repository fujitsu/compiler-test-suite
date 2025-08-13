module mm
private
public xyz,gen
type xyz
 integer :: a
   contains
   procedure :: prc
   procedure,nopass :: prc2
  generic:: gen=>prc2
end type xyz
contains
 subroutine prc( this )
  class(xyz),intent(out):: this
  this%a = 1
 end subroutine
 subroutine prc2(ii )
  write(9,*) ii
 end subroutine
end
module m1
use mm
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
contains
subroutine chk(x)
type(xyz)::x
if (x%a/=1) print *,101
rewind 9
read(9,*) k
 if (k/=109) print *,102
end subroutine
end
use m1,only:foo2
use m2,only:chk
call chk(foo2())
print *,'pass'
end

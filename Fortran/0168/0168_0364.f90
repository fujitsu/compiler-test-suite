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
  integer,intent(in):: ii
  j=ii
  j=j
 end subroutine
end
module m1
use mm
contains
 function foo(vv) result(v2)
  type (xyz):: v2
  type (xyz),intent(out):: vv
  call v2%gen (1)
  call v2%gen ()
  call vv%gen (1)
  call vv%gen ()
  v2%a=1
  vv%a=1
 end function
end module

print *,'pass'
end

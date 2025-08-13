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
  write(7,*) ii
 end subroutine
end
module m1
use mm
contains
 function foo() result(v2)
  type (xyz):: v2
  call v2%gen (1)
 end function
end module

print *,'pass'
end

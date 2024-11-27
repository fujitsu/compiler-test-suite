module m0
type xyz
integer :: a
   contains
   procedure,nopass:: prc1
  generic:: gen1=>prc1
end type xyz
contains
subroutine prc1( )
end subroutine
end
module m1
use m0
contains
function foo1( v1 ) result(v2)
  type (xyz),intent(out):: v1
  type (xyz)            :: v2
  call v1% gen1()
  call v2%gen1
end function
end module
end

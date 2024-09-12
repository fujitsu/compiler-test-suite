module mm
private
public xyz,gen
type xyz
 real :: a
   contains
   procedure :: prc
   procedure,nopass :: prc2
   procedure,nopass :: prc3
  generic:: gen=>prc
  generic:: gen=>prc2,prc3
end type xyz
contains
 subroutine prc( this,ii )
  class(xyz),intent(out):: this
  complex :: ii
  this%a = real(ii)
 end subroutine

 subroutine prc2(ii )
  real :: ii
  write(1,*) ii
 end subroutine

 subroutine prc3(ii,jj )
  real :: ii,jj
  ii = ii + jj
 end subroutine
end

module m1
use mm
contains
 function foo() result(v2)
  type (xyz) :: v2
  real :: ii = 2 , jj = 3
  call v2%gen (ii,jj)
 end function
end module

use m1
  type (xyz) :: res
print *,'pass'
end

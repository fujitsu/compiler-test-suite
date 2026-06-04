module mm
private
public v,gen
type xyz
 real :: a
   contains
   procedure :: prc
   procedure,nopass :: prc2
   procedure,nopass :: prc3
  generic:: gen=>prc2
  generic:: gen=>prc
  generic:: gen=>prc3
end type xyz
  type (xyz) :: v
contains
 subroutine prc( this,ii )
  class(xyz),intent(out):: this
  complex :: ii
  this%a = real(ii)
 end subroutine

 subroutine prc2(ii )
  real :: ii
  ii = ii + 4
 end subroutine

 subroutine prc3(ii,jj )
  real :: ii,jj
  ii = ii + jj
 end subroutine
end

module m2
use mm
end

use m2
  complex :: ii = (2,3)
  call v%gen (ii)
if (v%a/=2) print *,201
print *,'pass'
end

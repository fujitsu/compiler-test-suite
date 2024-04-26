module mm
private
public gen,xyz
type xyz
 real :: a
   contains
   procedure :: prc
   procedure,nopass :: prc2
  generic:: gen=>prc2
  generic:: gen=>prc
end type xyz
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

end

module m2
use mm
private
public:: v
  type (xyz) :: v
end

module m3
use mm
private 
public::gen
end

module m4
use m2
use m3
end

use m4
  complex :: ii = (2,3)
  call v%gen (ii)
if (v%a/=2) print *,201
print *,'pass'
end

module mm
private
public xyz
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

module m4
use mm
use m2
private
public:: v
  type (xyz) :: local_variable
end

module m5
use m4
private
public:: foo
contains
subroutine foo()
  complex :: ii = (2,3)
  real    :: kk = 5
  call v%gen (ii)
if (v%a/=2) print *,201
  call v%gen (kk)
if (v%a/=2) print *,202
if (kk/=9) print *,202
end subroutine
end

use m5
call foo
print *,'pass'
end

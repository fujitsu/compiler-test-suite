module mm
  integer,parameter :: p=10
  type ty
    integer :: i=20
  end type
end

module m
  interface
    module subroutine sub(a)
      use mm
      type(ty) :: a
    end subroutine  
  end interface
contains
  module procedure sub
    if (a%i /= 20) print *,101
    a%i=320
  end procedure
end

use m
use mm
type(ty) :: ret
call sub(ret)
if (ret%i /= 320) print *,201
print *,'pass'
end

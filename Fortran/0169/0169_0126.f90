module mm
  integer,parameter :: p=10
  type ty
    integer :: i=20
  end type
end

module m
  interface
    module function fun()
      use mm
      type(ty) :: fun
    end function
  end interface
end

submodule(m)smod
contains
  module procedure fun
    if (fun%i /= 20) print *,101
    fun%i=320
  end procedure
end

use m
use mm
type(ty)::x
x=fun()
if (x%i /= 320) print *,201
print *,'pass'
end

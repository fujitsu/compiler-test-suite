module m
  type ty
    integer i,j
  end type
  type ty2
    integer i,j,k
  end type
end

module m2
  use m
  interface
    module subroutine s(a)
      type(ty)::a
    end subroutine
  end interface
end

submodule(m2)smod
contains
  module procedure s
    print *,a
  end procedure
end

use m
use m2
call s(ty(5,6))
end

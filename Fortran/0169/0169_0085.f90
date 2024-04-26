module m
  type ty
    integer i,j
  end type
  type ty2
    integer i,j,k
  end type
end

module m2
  interface
    module subroutine s(a)
      use m
      type(ty)::a
    end subroutine
  end interface
end

submodule(m2)smod
contains
  module procedure s
    use m
    type(ty) :: y
    y = a
    if (y%i /= 5) print *,101
    if (y%j /= 6) print *,102
  end procedure
end

use m
use m2
call s(ty(5,6))
print *,'pass'
end

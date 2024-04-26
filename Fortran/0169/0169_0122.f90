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
    module subroutine s(a,f)
      use m
      type(ty)::a,f
    end subroutine
  end interface
contains
  module procedure s
    use m
    type(ty) :: y
    y = a
    f = y
  end procedure
end

use m
use m2
type(ty) ::x
call s(ty(7,8),x)
if (x%i /= 7) print *,101
if (x%j /= 8) print *,102
print *,'pass'
end

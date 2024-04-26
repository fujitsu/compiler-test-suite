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
    module function f(a)
      use m
      type(ty)::a,f
    end function  
  end interface
contains
  module procedure f
    use m
    type(ty) :: y
    y = a
    f = y
  end procedure
end

use m
use m2
type(ty) ::x
x = f(ty(7,8))
if (x%i /= 7) print *,101
if (x%j /= 8) print *,102
print *,'pass'
end

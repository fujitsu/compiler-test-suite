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
    module function fun()
      use m
      type(ty)::fun
    end function
  end interface
contains
  module procedure fun
    type(ty)::b
    fun%i = 5
    fun%j = 6
  end procedure
end

use m
use m2
type(ty)::ret
ret = fun()
if (ret%i /= 5) print *,201
if (ret%j /= 6) print *,202
print *,'pass'
end

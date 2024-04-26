module typedef
  type ty
    integer :: i
  end type
end

module m
  interface
    module function fun()
      use typedef
      type(ty)::fun
    end function
  end interface
contains
  module procedure fun
    type(ty)::a
    a%i = 10
    fun%i = a%i
  end procedure
end

use m
use typedef
type(ty) :: b
b = fun()
if (b%i /= 10) print *,101
print *,'pass'
end

module typedef
  type ty
    integer :: i
    character(10) :: c
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
    a%c = "1234567890"
    fun%i = a%i
    fun%c = a%c
  end procedure
end

use m
use typedef
type(ty) :: b
b = fun()
if (b%i /= 10) print *,101
if (b%c /= "1234567890") print *,102
print *,'pass'
end

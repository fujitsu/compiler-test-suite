module typedef
  type ty
    integer :: i
    character(10) :: c
  end type
end

module m
  interface
    module subroutine sub(arg)
      use typedef
      type(ty)::arg
    end subroutine
  end interface
contains
  module procedure sub
    type(ty)::a
    a%i = 10
    a%c = "1234567890"
    arg%i = a%i
    arg%c = a%c
  end procedure
end

use m
use typedef
type(ty) :: b
call sub(b)
if (b%i /= 10) print *,101
if (b%c /= "1234567890") print *,102
print *,'pass'
end

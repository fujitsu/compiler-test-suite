module mod
  type ty
    integer i
  end type
end
module m1
use mod
contains
  type(ty) function f2()
   f2%i=1
  end function
  type(ty) function f1()
   f1%i=1
  end function
subroutine s(x)
type(ty):: x
if (x%i /=1) print *,101
end subroutine
end

use m1
call s(f1())
call s(f2())
print *,'pass'
end

module mod
  type ty
    integer i
  end type
contains
subroutine s(x)
type(ty):: x
if (x%i /=1) print *,101
end subroutine
end
  type(ty) function f2()
use mod
   f2%i=1
  end function
  type(ty) function f1()
use mod
   f1%i=1
  end function

use mod
interface
  type(ty) function f2()
use mod
  end function
end interface
interface
  type(ty) function f1()
use mod
  end function
end interface
call s(f1())
call s(f2())
print *,'pass'
end

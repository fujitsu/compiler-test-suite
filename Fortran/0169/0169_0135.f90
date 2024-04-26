module typedef
  type ty
    integer :: i
    character(10) :: c
  end type
end

module m
  interface
    module subroutine sub(a,b)
      use typedef
      type(ty)::a
      integer ::b(a%i)
    end subroutine
  end interface
contains
  module procedure sub
    if(a%i /= 10) print *,101
    if(size(b) /=10) print *,102
  end procedure
end

use m
use typedef
type(ty) :: a
integer :: b(10)
a%i=10
call sub(a,b)
print *,'pass'
end

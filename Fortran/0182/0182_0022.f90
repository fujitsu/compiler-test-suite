module m
  integer x,y
  interface
    module subroutine sub(a)
      integer :: a(x)
    end subroutine
  end interface
contains
  module procedure sub
    integer y
    y=10
    if (x/=2) print *,101
    if (y/=10) print *,102
  end procedure
end

use m
x=2
y=3
call sub([1,2])
print *,'pass'
end

module m2
  integer x,y
end

module m
      use m2
  interface
    module subroutine sub(a)
      integer :: a(x)
    end subroutine
  end interface
contains
  module procedure sub
      use m2
    if (size(a)/=2) print *,109
    if (x/=2) print *,101
    if (y/=3) print *,102
  end procedure
end 

use m
use m2
x=2
y=3
call sub([1,2])
print *,'pass'
end

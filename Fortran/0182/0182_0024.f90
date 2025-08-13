module m2
  integer x,y
end

module m
  interface
    module subroutine sub(a)
      use m2
      integer :: a(x)
    end subroutine
  end interface
contains
  module procedure sub
    if (x/=2) write(2,*)101
  end procedure
end

use m
use m2
x=2
call sub([1,2])
print *,'pass'
end

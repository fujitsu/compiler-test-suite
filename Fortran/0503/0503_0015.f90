module m2
  integer ::x=0,y=5
end

module m
  integer ::x=1,y=3
  interface
    module subroutine sub(a)
      use m2
      integer :: a(x)
    end subroutine
  end interface
contains
  module procedure sub
use m2
    if (x/=2) print *,101
    if (y/=5) print *,102
  end procedure
end 

use m,only:sub
use m2
x=2
call sub([1,2])
print *,'pass'
end

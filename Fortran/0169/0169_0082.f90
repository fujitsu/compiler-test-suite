module m2
  integer x
end

module m
  interface
    module subroutine sub1(a)
      use m2
      integer :: a(x)
    end subroutine
  end interface
end

submodule(m)smod
  integer::x=100
contains
  module procedure sub1
    if (x/=5) print *,101
  end procedure
end

use m
use m2
x=5
call sub1([1,2,3,4,5])
print *,'pass'
end

module m2
  integer z,y,x
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
  integer::x=100,y=1,z=2
contains
  module procedure sub1
    if (x/=5) print *,101
    if (y/=1) print *,102
    if (z/=2) print *,103
    if (size(a)/=5) print *,104
  end procedure
end

use m
use m2
x=5
y=6
z=7
call sub1([1,2,3,4,5])
print *,'pass'
end

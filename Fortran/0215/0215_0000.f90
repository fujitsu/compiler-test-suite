module m2
  implicit none
  integer :: n=1
end

module m
  implicit none
  integer :: n=10000
  interface
    module subroutine sub(a,b)
      use m2
  implicit none
      integer :: a(n)
      integer :: b(size(a))
    end subroutine
  end interface
end

submodule(m)smod
contains
  module procedure sub
    if (size(a) /= 1) print *,3,size(a)
    if (size(b) /= 1) print *,4,size(b)
  end procedure
end

use m
integer::a(1),b(1)
call sub(a,b)
print *,'pass'
end

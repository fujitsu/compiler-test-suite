module m2
  implicit none
  integer :: n=1
end

module m3
  implicit none
  integer :: n=10
  interface
    module subroutine sub(a)
      implicit none
      integer::a(n)
    end subroutine
  end interface
end

submodule(m3)smod
contains
  module procedure sub
      use m2
if (size(a)/=10) print *,101
!!!print *,n
  end procedure
end

use m3
      integer::a(10)

call sub(a)
print *,'sngg198h : pass'
end

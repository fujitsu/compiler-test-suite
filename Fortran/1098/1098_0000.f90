module m2
  implicit none
  integer :: n=1
end

module m3
  implicit none
  integer :: n=10000
  interface
    module subroutine sub()
      use m2
      implicit none
    end subroutine
  end interface
end

submodule(m3)smod
contains
  module procedure sub
  implicit none
if (n/=10000) print *,100
  end procedure
end

use m3
call sub()
print *,'sngg194h : pass'
end

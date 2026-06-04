module m2
  implicit none
  integer :: n
end

module m
  implicit none
  integer :: n
  interface
    module subroutine sub(a)
      use m2
      implicit none
      integer :: a(n)
    end subroutine
  end interface
end

submodule(m)smod
contains
  module procedure sub
     k=n
  end procedure
end

use m
integer::a(8)
n=1000
call set_m2_n
call sub(a)
print *,'pass'
end
subroutine set_m2_n
use m2
n=1
end

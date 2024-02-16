module m2
  implicit none
  integer :: n=1
end

module m
  implicit none
  integer :: n=100
  interface
    module subroutine sub(a)
      use m2
  implicit none
      character(n) :: a
    end subroutine
  end interface
end

submodule(m)smod
contains
  module procedure sub
    if (len (a) /= 1) print *,3,len(a)
  end procedure
end

use m
      character(1) :: a
call sub(a)
print *,'pass'
end

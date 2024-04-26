module m2
  integer :: n=0
end

module m
  integer :: n=0
  interface
    module subroutine sub(a)
      use m2
      integer,parameter :: i=8
      integer :: a(i+n)
      integer,parameter :: j=19
    end subroutine
  end interface
end

submodule(m)smod
contains
  module procedure sub
    if (size(a) /= 8) print *,3
    if (i/=8) print *,4
  end procedure
end

use m
integer::a(8)
call sub(a)
print *,'pass'
end

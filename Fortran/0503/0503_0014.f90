module m2
  integer :: n=2
end

module m
  integer :: n=3
  interface
    module subroutine sub(a)
      use m2
      integer,parameter :: i=5
      integer :: a(i+n)
      integer,parameter :: j=19
    end subroutine
  end interface
contains
  module procedure sub
    if (size(a) /= 7) print *,3
    if (i/=5) print *,4
    if (n/=2) print *,41
  end procedure
end

use m
integer::a(8)
call sub(a)
print *,'pass'
end

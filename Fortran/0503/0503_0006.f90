module m2
  implicit none
  integer :: n=1
end
module k33
  implicit none
  integer :: n=2
end

module m
  implicit none
  interface
    module subroutine sub(a)
      use m2
  implicit none
      integer :: a(n)
    end subroutine
    module subroutine sub2(a)
      use k33
  implicit none
      integer :: a(n)
    end subroutine
  end interface
end

submodule(m)smod
contains
  module procedure sub
    if (size(a) /= 1) print *,1,size(a)
  end procedure
end
submodule(m)smoda
contains
  module procedure sub2
    if (size(a) /= 2) print *,2,size(a)
  end procedure
end

use m
integer::a(8)
call sub(a)
call sub2(a)
print *,'pass'
end

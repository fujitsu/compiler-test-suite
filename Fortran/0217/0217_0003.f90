module k1
  implicit none
  integer :: n=1
end
module k22
  implicit none
  integer :: n=2
end
module k333
  implicit none
  integer :: n=3
end

module m
  implicit none
  integer :: n=4
  interface
    module subroutine sub1(a)
      use k1
      implicit none
      integer :: a(n)
    end subroutine
    module subroutine sub4(a)
      implicit none
      integer :: a(n)
    end subroutine
    module subroutine sub3(a)
      use k333
      implicit none
      integer :: a(n)
    end subroutine
    module subroutine sub2(a)
      use k22
      implicit none
      integer :: a(n)
    end subroutine
  end interface
end

submodule(m)smod1
contains
  module procedure sub1
    if (size(a) /= 1) print *,1,size(a)
  end procedure
end
submodule(m)smod2
contains
  module procedure sub2
    if (size(a) /= 2) print *,2,size(a)
  end procedure
end
submodule(m)smod3
contains
  module procedure sub3
    if (size(a) /= 3) print *,3,size(a)
  end procedure
end
submodule(m)smod4
contains
  module procedure sub4
    if (size(a) /= 4) print *,4,size(a)
  end procedure
end

use m
integer::a(8)
call sub1(a)
call sub2(a)
call sub3(a)
call sub4(a)
print *,'pass'
end


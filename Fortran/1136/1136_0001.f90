module m0
  type xyz0
    integer :: i=3
  end type
end
module m1
use m0
  type,extends(xyz0)::xyz1
    integer :: k=100
    integer :: k2=100
  end type
end
module m2
use m1
  type,extends(xyz1)::xyz2
    integer :: k11=100
    integer :: k12=100
  end type
end
module m3
use m2
  type,extends(xyz2)::txyz
    integer :: kk=100
    integer :: kk2=100
  end type
end
module m4
use m3
  type(txyz) :: y
  type(txyz) :: yy
  type(xyz2) :: z
end
module m5
use m4
  interface
    module subroutine sub(bb)
      integer :: bb(y%xyz2%xyz1%i)
    end subroutine
    module subroutine sub1(bb)
      integer :: bb(yy%xyz2%xyz1%i)
    end subroutine
    module subroutine sub2(bb)
      integer :: bb(z%xyz1%i)
    end subroutine
  end interface
end

submodule (m5) smod
contains
module procedure sub
if (size(bb)/=3) print *,101
end
module procedure sub1
if (size(bb)/=3) print *,102
end
module procedure sub2
if (size(bb)/=3) print *,103
end
end

use m5
      integer :: bb(10)
call sub(bb)
call sub1(bb)
call sub2(bb)
print *,'pass'
end

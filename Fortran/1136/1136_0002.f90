module m0
  type xyz0
    integer :: i=3
  end type
end
module m1
use m0
  type,extends(xyz0)::xyz1
    integer :: k=100
  end type
end
module m2
use m1
  type,extends(xyz1)::xyz2
    integer :: k11=100
  end type
end
module m3
use m2
  type,extends(xyz2)::txyz
    integer :: kk=100
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
end

print *,'pass'
end

module m0
  type xyz0
    integer :: i=3
  end type
  type,extends(xyz0)::xyz1
    integer :: k
  end type
  type,extends(xyz1)::xyz2
    integer :: k11
  end type
  type,extends(xyz2)::txyz
    integer :: kk
  end type
end
module m4
use m0
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

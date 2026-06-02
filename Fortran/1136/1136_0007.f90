module m
  type xyz0
    integer :: i=3
  end type
  type,extends(xyz0)::xyz2
    integer :: k11
  end type
  type,extends(xyz2)::txyz
    integer :: kk
  end type
end
module m4
use m
  type(txyz) :: y
  type(txyz) :: yy
  type(xyz2) :: z
end
module mm1
use m4
  interface
    module subroutine s(bb)
      integer :: bb(y%xyz2%i)
    end subroutine
    module subroutine tu(bb)
      integer :: bb(yy%xyz2%i)
    end subroutine
  end interface
end

submodule (mm1) smod
contains
module procedure s
if (size(bb)/=3) print *,101
end
module procedure tu
if (size(bb)/=3) print *,102
end
end

print *,'pass'
end

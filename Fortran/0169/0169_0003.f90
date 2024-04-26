module mod
  interface
    module subroutine sub1(val)
      integer, intent(in) :: val
    end subroutine
  end interface
end module


submodule(mod)submod
contains
  module procedure sub1
    if (val /= 5) print *,1
  end procedure
end

use mod
call sub1(5)
print *,'pass'
end

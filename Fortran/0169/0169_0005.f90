module mod
  interface
    module subroutine sub1(val)
      integer, intent(in) :: val(1+2)
    end subroutine
  end interface
end module


submodule(mod)submod
contains
  module procedure sub1
    if (any(val /= [5,3,1])) print *,1
  end procedure
end

use mod
call sub1([5,3,1])
print *,'pass'
end

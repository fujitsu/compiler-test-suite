module mod
  interface
    module function f1(val1,val2)
      integer :: val1,val2
      integer :: f1
    end function
  end interface
end module


submodule(mod)submod
contains
  module procedure f1
    f1=10*val1*val2
  end procedure
end

use mod
if (f1(2,3) /= 60) print *,1
print *,'pass'
end

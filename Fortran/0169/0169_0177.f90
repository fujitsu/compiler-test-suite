module m
  integer ::i
  interface
    module subroutine sub
    end subroutine
    module function fun()
      integer fun
    end function
  end interface
end

submodule(m)smod
contains
  module subroutine sub
    i=5
  end subroutine
  module function fun()
    integer :: fun
    fun=10
  end function
end

use m
call sub
if (i/=5) print *,101
if (fun()/=10) print *,102
print *,'pass'
end

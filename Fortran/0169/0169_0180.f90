module m
  integer :: i
  interface
    module subroutine sub
    end subroutine
    module function fun()
      integer fun
    end function
  end interface
end

submodule(m)smod
end

submodule(m:smod)ssmod
contains
  module procedure  sub
  i=5
  end procedure
  module procedure fun
  fun=10
  end procedure
end

use m
call sub
if (i/=5) print *,101
if (fun()/=10) print *,102
print *,'pass'
end

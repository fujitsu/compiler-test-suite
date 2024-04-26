module m
  integer :: i
  interface
     module subroutine msub
     end subroutine
  end interface
end

submodule(m)smod
  interface
    module subroutine sub
    end subroutine
    module function fun()
      integer fun
    end function
  end interface
end

submodule(m:smod)ssmod
contains
  module subroutine sub
    i=5
  end subroutine
  module function fun()
    integer fun
    fun=10
  end function
  module subroutine msub
    call sub
    if (i/=5) print *,101
    if (fun()/=10) print *,102
  end subroutine
end submodule ssmod

use m
call msub
print *,'pass'
end

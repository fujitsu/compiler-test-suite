module m
  integer :: i
  interface
    module subroutine msub
    end subroutine
  end interface
end

submodule(m)smod
end

submodule(m:smod)ssmod
  interface
    module subroutine sub
    end subroutine
    module function fun()
      integer fun
    end function
  end interface
contains
  module subroutine msub
    call sub
    if (i/=5) print *,101
    if (fun()/=10) print *,102
  end subroutine
end

submodule(m:ssmod)sssmod
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
call msub
print *,'pass'
end

module m
  interface
    module subroutine sub
    end subroutine
  end interface
end

submodule(m)smod
  integer :: smod
contains
  subroutine parent_sub
    if (smod /= 20) print *,201
  end subroutine
  subroutine parent_sub2
    smod = 20
  end subroutine
end

submodule(m:smod)ssmod
  integer :: smod
contains
  module subroutine sub
    call parent_sub2
    call sub2
    if (smod /= 10) print *,101
    call parent_sub
  end subroutine
  subroutine sub2
    smod = 10
  end subroutine
end

use m
call sub
print *,'pass'
end

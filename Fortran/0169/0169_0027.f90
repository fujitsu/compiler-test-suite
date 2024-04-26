module m
  interface
     module subroutine sub
     end subroutine sub
  end interface
end module m

submodule(m)smod
contains
  module subroutine sub
    print *,'pass'
  end subroutine sub
end

use m
call sub
end

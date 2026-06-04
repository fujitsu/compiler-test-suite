module m
  implicit none
  interface
    module subroutine sub(a)
    end subroutine
  end interface
end

submodule(m)smod
contains
  module procedure sub
  end procedure
end

use m
call sub(1.0)
print *,'pass'
end

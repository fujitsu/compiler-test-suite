module m
  interface
    module subroutine sub
    end subroutine
  end interface
end

submodule(m)smod
contains
  subroutine sub1
    print *,'pass'
  end subroutine
  module subroutine sub
    call sub1
  end subroutine
end

use m
call sub
end

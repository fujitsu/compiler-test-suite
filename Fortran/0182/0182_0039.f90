module m
  interface
    module subroutine sub
    end subroutine
  end interface
end

submodule(m)parent_smod
  Interface
    module subroutine sub2
    end subroutine
  end interface
contains
  module subroutine sub
    call sub2
  end subroutine
end

submodule(m:parent_smod)child_smod
contains
  module subroutine sub2
    print *,'pass'
  end subroutine
end

program main
use m
call sub
end


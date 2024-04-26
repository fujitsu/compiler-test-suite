module m
  interface
    module subroutine sub
    end subroutine
  end interface
end

submodule(m)smod
contains
  subroutine subx
    print *,'ng'
  end subroutine
end

submodule(m)smod2
contains
  module subroutine sub
    print *,'pass'
  end subroutine
end

use m
call sub
end

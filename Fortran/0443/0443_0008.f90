module m$d
  interface
    module subroutine ssb1()
    end subroutine
  end interface
end module

submodule(m$d)submd
contains
  module subroutine ssb1()
  end subroutine
end

use m$d
call ssb1()
print *,'pass'
end

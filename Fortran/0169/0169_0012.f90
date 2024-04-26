module m
  interface
    module subroutine sub() bind(c,name="Sub1")
    end subroutine
  end interface
contains
  module subroutine sub() bind(c,name="Sub1")
    print *,'pass'
  end subroutine
end

use m
call sub
end

module m
  interface
    module subroutine sub(a)
      class(*)::a
    end subroutine
  end interface
contains
  module subroutine sub(a)
    class(*)::a
  end subroutine
end

use m
call sub(a)
print *,'pass'
end

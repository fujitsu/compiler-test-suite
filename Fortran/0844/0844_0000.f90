module m
  implicit none
  interface
    module subroutine sub1(a)
    end subroutine
    module subroutine sub2(a)
    end subroutine
    module subroutine sub3(a)
    end subroutine
    module subroutine sub4(a)
    end subroutine
  end interface
end

submodule(m)smod
contains
  module procedure sub1
  end procedure
  module procedure sub2
  end procedure
  module procedure sub3
  end procedure
  module subroutine sub4(a)
  end 
end

use m
print *,'pass'
end

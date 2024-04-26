module mod
  interface
    module subroutine sub1
    end subroutine
  end interface
end

submodule(mod)ule
contains
  module subroutine sub1
  end subroutine
end

module modu
  interface
    module subroutine sub2
    end subroutine
  end interface
end 

submodule(modu)le
contains
  module subroutine sub2
  end subroutine
end

use mod
use modu
call sub1
call sub2
print *,'pass'
end

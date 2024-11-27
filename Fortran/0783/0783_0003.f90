module m
  interface
     module subroutine sub
     end subroutine sub
  end interface
end module m

submodule(m)smod
contains
  module procedure SUB
  end
end submodule smod

use m
end

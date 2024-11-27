module m
  interface
     module subroutine sub
     end subroutine
  end interface
end module m

submodule(m)smod
contains
  module procedure sub
  end
end submodule smod

use m
end

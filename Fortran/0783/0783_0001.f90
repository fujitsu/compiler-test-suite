module m
  interface
     module subroutine sub
     end subroutine sub
  end interface
end module m

submodule(M)smod
end submodule smod

use m
end

module m
  interface
     module subroutine sub
     end subroutine sub
  end interface
end module m

submodule(m)smod
end submodule smoD

use m
end

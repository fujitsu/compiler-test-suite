module m
 interface
  module subroutine sub
  end subroutine
 end interface
end

submodule(m)smod
 interface
  module subroutine ssub
  end subroutine
 end interface
contains
 module subroutine sub
  call ssub
 end subroutine
 module subroutine ssub
  print *,'pass'
 end subroutine
end

use m
call sub
end

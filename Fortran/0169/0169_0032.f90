module m
 interface
  module subroutine sub1
  end subroutine
  module subroutine sub2
  end subroutine
 end interface
end

submodule(m)smod
contains
 module subroutine sub1
  call sub2
 end subroutine
end

submodule(m)ssmod
contains
 module subroutine sub2
  print *,'pass'
 end subroutine
end

use m
call sub1
end

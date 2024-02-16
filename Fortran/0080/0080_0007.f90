module m
 interface
  module subroutine sub
  end subroutine
  module subroutine smodx
  end subroutine
 end interface
end
module b
 interface
  module subroutine sub
  end subroutine
  module subroutine smod
  end subroutine
 end interface
end

submodule(m)smod
contains
 module subroutine sub
  call smod
 end subroutine
 subroutine smod
  print *,'pass'
 end subroutine
end

use m
call sub
end

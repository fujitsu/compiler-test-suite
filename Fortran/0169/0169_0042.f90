module m
 interface
  module subroutine sub
  end subroutine
 end interface
end

submodule(m)smod
contains
 module subroutine sub
  call sub1
 end subroutine
 subroutine sub1
  call sub2
 end subroutine
 subroutine sub2
  print *,'pass'
 end subroutine
end

use m
call sub
end

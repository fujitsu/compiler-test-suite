module m
 interface
  module subroutine sub
  end subroutine sub
 end interface
end

submodule(m)smod
 integer,allocatable::a
contains
 module subroutine sub
  call sub2
 end subroutine
 subroutine sub2
  print *,'pass'
 end subroutine 
end

use m
call sub
end

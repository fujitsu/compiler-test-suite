!
module m
 interface
  module subroutine msub
  end subroutine
 end interface
end

submodule(m)smod
 interface
  recursive module subroutine sub(i)
  end subroutine
 end interface
contains
 module subroutine msub
  call sub(1)
 end subroutine
 module recursive subroutine sub(i)
  if (i /=3) call sub(i+1)
 end subroutine
end

use m
call msub
print *,'pass'
end

module m
 interface
  module subroutine msub
  end subroutine
 end interface
end

submodule(m)smod
contains
 module subroutine msub
  call sub(1)
 end subroutine
 recursive subroutine sub(i)
  if (i /=3) call sub(i+1)
 end subroutine
end

use m
call msub
print *,'pass'
end

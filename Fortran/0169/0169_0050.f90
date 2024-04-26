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
 subroutine sub(i)
  if (i /=3) call sub2(i+1)
 end subroutine
 subroutine sub2(i)
  call sub(i)
 end subroutine
end

use m
call msub
print *,'pass'
end

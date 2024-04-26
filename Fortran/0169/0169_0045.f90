module m
 interface
  module subroutine msub
  end subroutine
 end interface
end

submodule(m)smod
 interface
  module subroutine sub(i)
  end subroutine
  module subroutine sub2(i)
  end subroutine
 end interface
contains
 module subroutine msub
  call sub(1)
 end subroutine
end

submodule(m:smod)ssmod
contains
 module subroutine sub(i)
  if (i /=3) call sub2(i+1)
 end subroutine
 module subroutine sub2(i)
  call sub(i)
 end subroutine
end

use m
call msub
print *,'pass'
end

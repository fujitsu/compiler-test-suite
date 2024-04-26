module m
 interface
  module subroutine sub(i)
  end subroutine
  module subroutine sub2(i)
  end subroutine
 end interface
contains
 module subroutine sub(i)
  if (i /=3) call sub2(i+1)
 end subroutine
 module subroutine sub2(i)
  call sub(i)
 end subroutine
end

use m
call sub(1)
print *,'pass'
end

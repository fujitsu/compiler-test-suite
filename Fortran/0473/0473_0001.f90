module m
 interface gen
  module subroutine sub(i)
  end subroutine
 end interface
contains
 module subroutine sub(i)
  if (i /=1) print *,101
 end subroutine
end

use m
call sub(1)
call gen(1)
print *,'pass'
end

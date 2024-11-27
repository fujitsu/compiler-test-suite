module m
 interface 
  module subroutine sub(i)
  end subroutine
  module subroutine sub2(i,k)
  end subroutine
 end interface
end
submodule (m) xx
 interface gen
  procedure    sub2
 end interface
contains
 module subroutine sub(i)
  if (i /=1) print *,101
call sub2(i,i+1)
call gen (i,i+1)
 end subroutine
  subroutine sub2(i,k)
  if (i /=1) print *,102
  if (k /=2) print *,103
  end subroutine
end

use m
call sub(1)
print *,'pass'
end

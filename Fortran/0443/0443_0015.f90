module m
  interface
     module subroutine sub
     end subroutine
  end interface
integer::n=0
end module m

submodule(m)smod
contains
  module subroutine sub
  interface
     subroutine ssuba()
     end subroutine
  end interface
  call ssuba
  end subroutine sub
end submodule smod

use m
call sub
if (n/=1) print *,201
print *,'pass'
end
     subroutine ssuba()
use m
n=n+1
     end subroutine

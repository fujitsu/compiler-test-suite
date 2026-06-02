module n
contains
character function f() result(r)
r='1'
end 
end

module m1
use n
implicit none
!!! private
!!!public::sub
  interface
     module subroutine sub()
     end subroutine
  end interface
end module m1
submodule (m1) m1sub
contains
  module subroutine sub()
implicit none
if (f()/='1') print *,101
  end 
end submodule m1sub

use m1
call sub

print *,'sngg827n : pass'
end

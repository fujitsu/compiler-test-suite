module n
interface 
character function   z()
end function
end interface
end
module m1
use n
implicit none
 private
public::sub1
  interface
     module subroutine sub1()
     end subroutine
  end interface
end module m1
submodule (m1) m1sub
contains
  module subroutine sub1()
implicit none
if ( z()/='z') print *,1001
  end subroutine sub1
end submodule m1sub

use m1
call sub1

print *,'sngg380n : pass'
end
character function   z()
z='z'
end function

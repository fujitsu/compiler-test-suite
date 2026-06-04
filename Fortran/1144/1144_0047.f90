module n
interface 
subroutine z()
end subroutine
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
call z
  end subroutine sub1
end submodule m1sub

use m1
call sub1

print *,'sngg379n : pass'
end
subroutine z()
end subroutine

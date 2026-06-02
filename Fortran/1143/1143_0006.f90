module n
implicit none
integer          ::k2=2
end
module m1
  use n    
implicit none
public::sub1
 private 
  interface
     module subroutine sub1()
     end subroutine
  end interface
end module m1
submodule (m1) m1sub
contains
  module subroutine sub1()
implicit none
if (k2/=2)print *,1001
  end subroutine sub1
end submodule m1sub

use m1
call sub1

print *,'sngg018n : pass'
end

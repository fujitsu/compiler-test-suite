module n
implicit none
integer          ::k1=1
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
       implicit none
contains
  module subroutine sub1()
!!!!implicit none
if (k1/=1) print *,101
  end subroutine sub1
end submodule m1sub

use m1
call sub1

print *,'sngg037n : pass'
end

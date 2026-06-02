module n
implicit none
integer          ::k1=1
integer          ::l =2
end
module m1
  use n    
implicit none
 private 
 public::l 
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
if (k1/=1) print *,101
if (l /=2) print *,102
  end subroutine sub1
end submodule m1sub

use m1
call sub1

print *,'sngg019n : pass'
end

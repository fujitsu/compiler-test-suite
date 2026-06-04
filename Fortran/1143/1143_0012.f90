module m1
implicit none
 private 
public::sub1
integer          ::k1=1
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
  end subroutine sub1
end submodule m1sub

use m1
call sub1

print *,'sngg025n : pass'
end

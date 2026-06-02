module m1
implicit none
integer,parameter          ::k1=1
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
if (k1/=1) print *,101
  end subroutine sub1
end submodule m1sub

use m1
call sub1

print *,'sngg026n : pass'
end

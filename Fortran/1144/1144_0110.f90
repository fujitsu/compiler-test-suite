module n
contains
character function   f(a)
real::a
if (a/=1.) print *,901
f='1'
end 
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
 if (f(1.)/='1') print *,1010
  end subroutine sub1
end submodule m1sub

use m1
call sub1

print *,'sngg442n : pass'
end

module n
contains
function   foo2(n)
integer::n,foo2
if (n/=2) print *,902
foo2=2
end function  
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
if ( foo2(2 )/=2) print *,1001
  end subroutine sub1
end submodule m1sub

use m1
call sub1

print *,'sngg036n : pass'
end

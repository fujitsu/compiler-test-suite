module n  
implicit none
contains
function  foo2(n)
integer::n,foo2,foo3
entry foo3(n)
if (n/=2) print *,902
foo2=n
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
if ( foo2(2 )/=2) print *,9001
if ( foo3(2 )/=2) print *,9002
  end subroutine sub1
end submodule m1sub

use m1
call sub1

print *,'sngg049n : pass'
end

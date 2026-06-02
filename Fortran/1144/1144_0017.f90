module n  
implicit none
interface 
function  foo2(n1,n2)
integer,intent(in)::n1,n2
integer::foo2
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
if ( foo2(2,3 )/=5) print *,9001
!if ( (2.x.3 )/=5) print *,9002
  end subroutine sub1
end submodule m1sub

use m1
call sub1

print *,'sngg055n : pass'
end
function  foo2(n1,n2)
integer,intent(in)::n1,n2
integer::foo2
foo2=n1+n2
end function

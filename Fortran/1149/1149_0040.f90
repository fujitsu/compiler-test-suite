module n  
implicit none
interface operator(.x.)
   procedure ::foo2
end interface
contains
function  foo2(n1,n2)
integer,intent(in)::n1,n2
integer::foo2
foo2=n1+n2
end function
end
module m1
use n
implicit none
 private::operator(.x.),foo2 
public::sub1,sub2
  interface
     module subroutine sub1()
     end subroutine
     module subroutine sub2()
     end subroutine
  end interface
end module m1
submodule (m1) m1sub
contains
  module subroutine sub1()
implicit none
if ( foo2(2,3 )/=5) print *,9001
if ( (2.x.3 )/=5) print *,9002
  end
end
submodule (m1:m1sub) m2sub
end
submodule (m1:m2sub) m3sub
end
submodule (m1:m3sub) m4sub
end
submodule (m1:m4sub) m5sub
contains
  module subroutine sub2()
implicit none
if ( foo2(2,3 )/=5) print *,9001
if ( (2.x.3 )/=5) print *,9002
  end
end 

use m1
call sub1
call sub2

print *,'sngg098o : pass'
end

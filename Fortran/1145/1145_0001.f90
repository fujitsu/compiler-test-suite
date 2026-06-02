module n  
implicit none
interface assignment(=)
   procedure ::foo2
end interface
type x
  integer::x1
end type
contains
subroutine foo2(n1,n2)
integer,intent(in)::n2
type(x),intent(out)::n1
n1%x1=n2
end subroutine
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
  type(x)::v
v=1
if (v%x1/=1) print *,9001
  end subroutine sub1
end submodule m1sub

use m1
call sub1

print *,'sngg063n : pass'
end

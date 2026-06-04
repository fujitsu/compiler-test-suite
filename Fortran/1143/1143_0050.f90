module n  
implicit none
interface operator(+)
   procedure ::foo2
end interface
type x
  integer::x1=2
end type
contains
function  foo2(n1,n2)
type(x),intent(in)::n1
integer,intent(in)::n2
integer::foo2
foo2=n1%x1+n2
end function
end
module m1
use n
implicit none
 private 
public::sub1,foo2,x
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
if ( foo2(v,3 )/=5) print *,9001
if ( (v+3 )/=5) print *,9002
  end subroutine sub1
end submodule m1sub

use m1
call sub1

print *,'sngg115n : pass'
end

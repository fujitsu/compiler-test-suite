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
public::sub1,x,sub2
  interface
     module subroutine sub2()
     end subroutine
     module subroutine sub1()
     end subroutine
  end interface
end module m1
submodule (m1) m1sub
contains
  module procedure  sub1
implicit none
type(x)::v
if ( foo2(v,3 )/=5) print *,9001
if ( (v+3 )/=5) print *,9002
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
  module procedure  sub2
implicit none
type(x)::v
if ( foo2(v,3 )/=5) print *,9001
if ( (v+3 )/=5) print *,9002
  end 
end 

use m1
call sub1
call sub2

print *,'sngg428o : pass'
end

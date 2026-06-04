module n
  interface operator (+)
    procedure f
  end interface
private::f
contains
function    f(a,b) result(r)
logical     ::r
character(*),intent(in)::a
real,intent(in)::b
if (a/='1') print *,900
if (b/=1.) print *,901
r=.false.
end 
end
module r1
use n
end
module r2
use r1
end
module m1
use r2
implicit none
 private
public::sub1,sub2
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
real::d=1.
if ('1' + d ) print *,100
if ('1' + 1.) print *,101
  end
end submodule m1sub
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
real::d=1.
if ('1' + d ) print *,100
if ('1' + 1.) print *,101
  end 
end 

use m1
call sub1
call sub2

print *,'sngg433o : pass'
end

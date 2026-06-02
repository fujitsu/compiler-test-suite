module n
  procedure(f),pointer::p
contains
character function   f(a) result(r)
real::a
if (a/=1.) print *,901
r='1'
end 
end
module m1
use n
implicit none
 private ::p,f
public::sub,sub2
  interface
     module subroutine sub2()
     end subroutine
     module subroutine sub()
     end subroutine
  end interface
end module m1
submodule (m1) m1sub
contains
  module subroutine sub()
implicit none
p=>f
if (p(1.)/='1') print *,1001
if (f(1.)/='1') print *,1001
  end subroutine 
end submodule m1sub
submodule (m1: m1sub)s2
end
submodule (m1: s2)s3
end
submodule (m1: s3)s4
end
submodule (m1: s4)s5
contains
  module subroutine sub2()
implicit none
if (p(1.)/='1') print *,1001
if (f(1.)/='1') print *,1001
  end subroutine 
end 

use m1
call sub
call sub2

print *,'sngg134o : pass'
end

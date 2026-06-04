module n
  procedure(f),pointer::p
private::f
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
 private 
public::sub,sub2
  interface
     module subroutine sub2()
     end subroutine
     module subroutine sub()
     end subroutine
  end interface
end module m1
submodule (m1) m1sub
interface
character function   z(a) result(r)
real::a
end 
end interface
contains
  module subroutine sub()
implicit none
p=>z
if (p(1.)/='1') print *,1001
  end subroutine 
end submodule m1sub
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
if (p(1.)/='1') print *,1001
  end subroutine 
end submodule 

use m1
call sub
call sub2

print *,'sngg126o : pass'
end
character function   z(a) result(r)
real::a
if (a/=1.) print *,902
r='1'
end 

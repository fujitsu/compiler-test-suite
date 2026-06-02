module n
external p
pointer::p
character::p
end
module m1
use n
implicit none
 private::p 
public::sub
  interface
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

use m1
call sub

print *,'sngg471n : pass'
end
character function   z(a) result(r)
real::a
if (a/=1.) print *,902
r='1'
end 

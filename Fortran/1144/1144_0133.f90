module n
  procedure(character),pointer::p
end
module m1
use n
implicit none
 private 
public::sub
  interface
     module subroutine sub()
     end subroutine
  end interface
end module m1
submodule (m1) m1sub
contains
  module subroutine sub()
implicit none
  procedure(character)::z
p=>z
if (p(1.)/='1') print *,1001
  end subroutine 
end submodule m1sub

use m1
call sub

print *,'sngg465n : pass'
end
character function   z(a) result(r)
real::a
if (a/=1.) print *,902
r='1'
end 

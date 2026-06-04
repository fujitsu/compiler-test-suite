module n
  interface gen
    procedure foo1
  end interface
contains
character function  foo1(a)
real::a
if (a/=1.) print *,901
foo1='1'
end 
end
module m1
use n,only:g=>gen
implicit none
 private::g
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
if (g(1.)/='1')print *,101
  end subroutine sub1
end submodule m1sub

use m1
call sub1

print *,'sngg413n : pass'
end

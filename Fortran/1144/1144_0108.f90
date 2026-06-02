module n
  interface gen
    procedure h
  end interface
private::h,foo1
contains
character function   foo1(a)
real::a
entry h(a)
character h
if (a/=1.) print *,901
foo1='1'
end 
end
module m1
use n
implicit none
 private::gen 
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
if (gen (1.)/='1')print *,1001
  end subroutine sub1
end submodule m1sub

use m1
call sub1

print *,'sngg440n : pass'
end

module n
  interface gen
    procedure f
  end interface
private::f
contains
character function f(a)
real::a
if (a/=1.) print *,901
f='1'
end 
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
if (gen(1.)/='1')print *,2002
  end subroutine sub1
end submodule m1sub

use m1
call sub1

print *,'sngg488n : pass'
end

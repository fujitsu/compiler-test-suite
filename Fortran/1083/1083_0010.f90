module n
  interface assignment(=)
    procedure f
  end interface
private::f
contains
subroutine  f(a,b)
character(*),intent(out)::a
real,intent(in)::b
if (b/=1.) print *,901
a='1'
end 
end
module m1
use n
implicit none
 private::assignment(=)
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
character::c
c=1.
if (c/='1') print *,101
  end subroutine sub1
end submodule m1sub

use m1
call sub1

print *,'sngg478n : pass'
end

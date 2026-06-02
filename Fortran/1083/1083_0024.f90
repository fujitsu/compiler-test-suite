module n
  interface operator (.x.)
    procedure f
  end interface
private::f
contains
function    f(a) result(r)
logical     ::r
character(*),intent(in)::a
if (a/='1') print *,900
r=.false.
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
if (.x.'1') print *,100
  end subroutine sub1
end submodule m1sub

use m1
call sub1

print *,'sngg492n : pass'
end

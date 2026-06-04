module n
  interface gen
    procedure foo2
  end interface
private foo2
contains
subroutine foo2(n)
integer::n
if (n/=2) print *,902
end subroutine
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
call gen (2 )
  end subroutine sub1
end submodule m1sub

use m1
call sub1

print *,'sngg038n : pass'
end

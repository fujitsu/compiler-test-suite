module n
procedure(foo2),pointer::foo3
  interface gen
    procedure foo3
  end interface
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
public::sub1,set
  interface
     module subroutine sub1()
     end subroutine
  end interface
contains
subroutine set
 foo3=>foo2
end subroutine
end module m1
submodule (m1) m1sub
contains
  module subroutine sub1()
implicit none
call gen (2 )
call foo2(2 )
call foo3(2 )
  end subroutine sub1
end submodule m1sub

use m1
call set
call sub1

print *,'sngg039n : pass'
end

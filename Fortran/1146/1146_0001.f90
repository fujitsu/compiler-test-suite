module n
  interface gen
    procedure foo2
  end interface
contains
subroutine foo2(n)
integer::n
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
  end subroutine sub1
end submodule m1sub

use m1

print *,'sngg172o : pass'
end

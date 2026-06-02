module m1
implicit none
 private 
public::sub1
  interface
     module subroutine sub1()
     end subroutine
  end interface
contains
subroutine foo2(n)
integer::n
if (n/=2) print *,902
end subroutine
end module m1
submodule (m1) m1sub
contains
  module subroutine sub1()
implicit none
call foo2(2 )
  end subroutine sub1
end submodule m1sub

use m1
call sub1

print *,'sngg046n : pass'
end

module m1
implicit none
 private 
public::sub1
  interface
     module subroutine sub1()
     end subroutine
  end interface
interface
function   foo2(n)
integer::n
character::foo2
end function
end interface
end module m1
submodule (m1) m1sub
contains
  module subroutine sub1()
!!!implicit none
if (foo2(2 )/=char(2)) print *,2001
  end subroutine sub1
end submodule m1sub

use m1
call sub1

print *,'sngg060n : pass'
end
function   foo2(n)
character::foo2
integer::n
if (n/=2) print *,902
foo2=char(n)
end 

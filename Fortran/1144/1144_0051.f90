module n
  interface gen
    procedure foo1
  end interface
private
public::gen
contains
subroutine foo1(a)
real::a
if (a/=1.) print *,901
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
call sub1

print *,'sngg383n : pass'
end

module n
implicit none
type x
 integer ::x1=1
end type
public::x
private
end
module m1
  use n ,y=>x
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
type(y)::v
if (v%x1/=1) print *,101
  end subroutine sub1
end submodule m1sub

use m1
call sub1

print *,'sngg340n : pass'
end

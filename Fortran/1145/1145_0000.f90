module n
implicit none
type x
 integer ::x1=1
end type
end
module m1
  use n    
implicit none
 private x
  interface
     module subroutine sub1()
     end subroutine
  end interface
end module m1
submodule (m1) m1sub
contains
  module subroutine sub1()
implicit none
type(x)::v
if (v%x1/=1) print *,101
  end subroutine sub1
end submodule m1sub

use m1
call sub1

print *,'sngg021n : pass'
end

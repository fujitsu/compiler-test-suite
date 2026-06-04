module k                     ! 1)
integer(8)::n=8        ! 4)
end
module m1                     ! 2) , 7)
  use k                      ! 3) , 4)
  private::n                     ! 5)
  public
  interface
     module subroutine sub1()
     end subroutine
  end interface
end module m1
module z
integer(4)::n=4        ! 4)
end

submodule (m1) submod          ! 6), 7)
use z
       implicit none
  real(kind=kind(n)) :: a            ! 8)
contains
  module subroutine sub1()
    real(kind=kind(n)) :: b         ! 8)
    if (n/=4)print *,2002
    if (kind(a)/=4)print *,2012
    if (kind(b)/=4)print *,2013
  end subroutine sub1
end 

use m1
call sub1
print *,'sngg239n : pass'
end

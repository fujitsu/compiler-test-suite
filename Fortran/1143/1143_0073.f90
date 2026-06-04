module k                     ! 1)
integer,parameter::n=8        ! 4)
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

submodule (m1) submod          ! 6), 7)
       implicit none
  real(kind=n) :: a            ! 8)
contains
  module subroutine sub1()
    real(kind=n) :: b         ! 8)
  end subroutine sub1
end 

use m1
call sub1
print *,'sngg223n : pass'
end

module m0                     ! 1)
implicit none
integer(8)::n=8        ! 4)
end
module m1                     ! 2) , 7)
  use m0                      ! 3) , 4)
implicit none
  private::n
  interface
     module subroutine sub1()
implicit none
     end subroutine
  end interface
end module m1

submodule (m1) submod          ! 6), 7)
implicit none
  real(kind=kind(n)) :: a            ! 8)
contains
  module subroutine sub1()
implicit none
    real(kind=kind(n)) :: b         ! 8)
if (kind(a)/=8) print *,1001
if (kind(b)/=8) print *,1002
  end subroutine sub1
end 

use m1
call sub1
print *,'sngg147n : pass'
end

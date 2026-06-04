module m0                            ! 1)
  interface                          ! 2)
     subroutine sub0()
     end subroutine
  end interface
end
module m1                            ! 3)
  use m0                             ! 4)
  implicit none
  procedure(sub0) :: sub1
  procedure(sub1), pointer :: subPtr ! 5), 6), 8), 11)
  interface subWpr                   ! 9), 12)
     procedure subPtr                ! 10), 11)
  end interface subWpr
end module m1
module m2                            ! 13)
  interface
     subroutine sub2()               ! 14)
 use m1                        ! 15)
     end subroutine sub2
  end interface
end module m2

use m2
print *,'sngg732o : pass'
end

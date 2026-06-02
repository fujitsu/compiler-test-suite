module m0                            ! 1)
  interface vvvv                     ! 2)
     subroutine sub0()
     end subroutine
  end interface
end
module m1                            ! 3)
  use m0                             ! 4)
  public :: aaa
  procedure(sub0), pointer :: subPtr ! 5), 6), 8), 11)
  interface subWpr                   ! 9), 12)
     procedure subPtr                ! 10), 11)
  end interface subWpr
end module m1
module m2                            ! 13)
  interface cccc
     subroutine sub2()               ! 14)
 use m1                        ! 15)
     end subroutine sub2
  end interface
end module m2

use m2
print *,'pass'
end

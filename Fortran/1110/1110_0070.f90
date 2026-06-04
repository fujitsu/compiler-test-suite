module m0                            ! 1)
  interface                          ! 2), 3)
     subroutine sub0()               ! 7-2-1), 7-2-2)
     end subroutine 
  end interface
end
module m1                            ! 4)
  use m0                             ! 5)
  implicit none
  private
  procedure(sub0), pointer :: subPtr ! 6), 7-2-1), 7-2-2), 10)
  interface subWpr                   ! 8), 11)
     procedure subPtr                ! 9), 10)
  end interface subWpr
  public :: subWpr                   ! 11)
end module m1
module m2                            ! 12)
  interface
     subroutine sub2()               ! 13)
       use m1                        ! 14)
     end subroutine sub2
  end interface
end module m2

print *,'sngg733o : pass'
end

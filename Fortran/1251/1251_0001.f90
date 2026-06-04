module m0                            ! 1)
  interface                          ! 
     subroutine sub0()               ! 2)
     end subroutine 
  end interface
end
module m1                            ! 3)
  use m0                             ! 4)
  implicit none
  private
  procedure(sub0), pointer :: subPtr ! 5), 6-2), 9)
  interface subWpr                   ! 7), 10)
     procedure subPtr                ! 8), 9)
  end interface subWpr
  public :: subWpr                   ! 10)
end module m1
module m2                            ! 11)
  interface
     subroutine sub2()               ! 12)
       use m1                        ! 13)
     end subroutine sub2
  end interface
end module m2

print *,'sngg480p : pass'
end

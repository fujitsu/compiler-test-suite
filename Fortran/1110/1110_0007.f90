module m1
  implicit none
  private
  procedure(dummySubroutine), pointer :: subroutinePtr 
  interface subroutineWpr
     procedure subroutinePtr
  end interface subroutineWpr
  public :: subroutineWpr ! comment out this will prevent crash
contains
     subroutine dummySubroutine()
     end subroutine dummySubroutine
end module m1
module m2
  interface
     subroutine example_subroutine()
       use m1            ! comment out this will prevent crash
     end subroutine example_subroutine
  end interface
end module m2

use m2
print *,'sngg664o : pass'
end

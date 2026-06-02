module m1
  implicit none
  private
  interface
     subroutine dummySubroutine()
     end subroutine dummySubroutine
  end interface
  procedure(dummySubroutine), pointer :: subroutinePtr 
  interface subroutineWpr
     procedure subroutinePtr
  end interface subroutineWpr
  public :: subroutineWpr ! comment out this will prevent crash
end module m1
module m2
  interface
     subroutine example_subroutine()
       use m1            ! comment out this will prevent crash
     end subroutine example_subroutine
  end interface
end module m2

use m2
print *,'sngg663o : pass'
end

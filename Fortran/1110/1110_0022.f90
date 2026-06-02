module m0
  interface
     subroutine temp2Subroutine()
     end subroutine 
  end interface
end
module m1
  use m0
  implicit none
  private
  procedure(dummySubroutine), pointer :: subroutinePtr 
  interface
     subroutine dummySubroutine()
     end subroutine dummySubroutine
  end interface
  interface subroutineWpr
     procedure subroutinePtr
  end interface subroutineWpr
  public :: subroutineWpr ! comment out this will prevent crash
end module m1
module m2
  use m1    
  interface
     subroutine example_subroutine()
        import
     end subroutine example_subroutine
  end interface
end module m2

use m2
print *,'sngg681o : pass'
end

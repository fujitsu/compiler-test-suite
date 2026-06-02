module m0
  interface
     subroutine x_Subroutine()
     end subroutine 
  end interface
end
module m1
  use m0
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
  public :: subroutineWpr 
end module m1
module m2
  interface
     subroutine example_subroutine()
       use m1            
     end subroutine example_subroutine
  end interface
end module m2

use m2
print *,'sngg672o : pass'
end

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
  interface temp_gen
      subroutine dummy2Subroutine()
      end subroutine dummy2Subroutine
  end interface temp_gen
  procedure(dummySubroutine), pointer :: subroutinePtr 
  interface
     subroutine dummySubroutine()
     end subroutine dummySubroutine
  end interface
  interface
     subroutine temp3()
     end subroutine 
  end interface
  interface subroutineWpr
     procedure subroutinePtr
  end interface subroutineWpr
  public :: subroutineWpr ! comment out this will prevent crash
  public :: temp_gen
end module m1
module m2
  interface
     subroutine example_subroutine()
       use m1            ! comment out this will prevent crash
     end subroutine example_subroutine
  end interface
end module m2

use m2
print *,'sngg712o : pass'
end

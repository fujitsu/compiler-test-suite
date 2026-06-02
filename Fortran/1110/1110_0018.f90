module m1
  implicit none
interface
 subroutine example_subroutine()
  interface temp_gen
     subroutine dummy2Subroutine()
     end subroutine dummy2Subroutine
  end interface
  procedure(dummySubroutine), pointer :: subroutinePtr 
  interface
     subroutine dummySubroutine()
     end subroutine dummySubroutine
  end interface
  interface subroutineWpr
     procedure subroutinePtr
  end interface subroutineWpr
 end subroutine example_subroutine
end interface
end module m1

use m1
print *,'sngg677o : pass'
end

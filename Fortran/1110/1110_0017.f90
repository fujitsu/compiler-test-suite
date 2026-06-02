module m1
  implicit none
interface
 subroutine example_subroutine()
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
print *,'sngg676o : pass'
end

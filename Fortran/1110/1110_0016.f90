module m0
  interface
     subroutine x_Subroutine()
     end subroutine 
  end interface
end
module m1
  use m0
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
print *,'sngg675o : pass'
end

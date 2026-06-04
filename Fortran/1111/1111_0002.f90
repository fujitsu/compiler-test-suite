module m1
  !!!!use petscsys            ! comment out this will prevent crash
  implicit none
  !private
  procedure(dummySubroutine), pointer :: subroutinePtr 
  interface
     subroutine dummySubroutine(sPtr)
       procedure(dummy3), pointer :: sPtr 
       interface
         subroutine dummy3
         end subroutine
        end interface
     end subroutine dummySubroutine
     subroutine dummy2
     end subroutine
  end interface
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
print *,'sngg775o : pass'
end

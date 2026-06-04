module m1
  procedure(sin), pointer :: sub
  interface s
     procedure sub
  end interface
end module m1
module m2
  interface
     subroutine example_subroutine()
!      use petscsys      
      use m1           
     end subroutine
  end interface
end 

use m2
print *,'sngg652o : pass'
end

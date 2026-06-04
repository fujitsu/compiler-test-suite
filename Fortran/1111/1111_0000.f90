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
  procedure(sin), pointer :: ptr 
  interface gen
     procedure ptr
  end interface gen
  public :: gen ! comment out this will prevent crash
  public :: set
contains
subroutine set
intrinsic cos
ptr => cos
end
end module m1
module m2
  interface
     subroutine example_subroutine()
       !use m1            ! comment out this will prevent crash
     end subroutine example_subroutine
  end interface
end module m2

use m1
use m2
call set
if (abs(gen(0.1)-cos(0.1))>0.001) print *,1001
call example_subroutine
print *,'sngg773o : pass'
end
     subroutine example_subroutine()
     end subroutine example_subroutine

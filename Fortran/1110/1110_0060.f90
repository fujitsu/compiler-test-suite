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
  interface subroutineWpr
     procedure ptr
  end interface subroutineWpr
  public :: subroutineWpr ! comment out this will prevent crash
  public :: ptr
end module m1
module m2
  interface
     subroutine example_subroutine()
       use m1            ! comment out this will prevent crash
     end subroutine example_subroutine
  end interface
end module m2

use m2
use m1
intrinsic cos
ptr => cos
if (abs(ptr(0.1)-cos(0.1))>0.001) print *,1001
if (abs(subroutineWpr(0.1)-cos(0.1))>0.001) print *,1001
call example_subroutine
print *,'sngg723o : pass'
end
     subroutine example_subroutine()
       use m1            ! comment out this will prevent crash
     end subroutine example_subroutine

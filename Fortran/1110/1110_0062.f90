module m1
  implicit none
  private
  procedure(sin), pointer :: ptr 
  interface gen
     procedure ptr
  end interface gen
  public :: gen,s
contains
subroutine s
intrinsic cos
ptr => cos
end subroutine
end module m1

use m1
call s
if (abs(gen(0.1)-cos(0.1))>0.001) print *,1001
print *,'sngg725o : pass'
end

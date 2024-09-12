module m1
  implicit none
  real::v,x=1
  pointer(p,v)
end
module m2
  use m1
  private :: p
  private :: v,x
contains
  subroutine s
    p=loc(x)
  end subroutine
end
use m1
use m2
call s
if (v/=1) print *,101 
print *,'pass'
end

module m1
  implicit none
  real::v,x=1
  pointer(p,v)
end
module m2
  use m1
  private 
  public::s
contains
  subroutine s
    p=loc(x)
  end subroutine
end
module m11
  implicit none
  real::vv,x=11
  pointer(p,vv)
end
module m21
  use m11
  private 
  public::s2
contains
  subroutine s2
    p=loc(x)
  end subroutine
end
use m1
use m2
use m21
use m11
call s
call s2
if (v/=1) print *,101 
if (vv/=11) print *,1011 
print *,'pass'
end

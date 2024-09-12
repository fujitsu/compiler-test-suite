module m1
  implicit none
  real::v,x=1
  pointer(p,v)
  type w
    integer::w1=1
  end type
  interface gen
    subroutine r1(r2)
    end subroutine
  end interface
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
  type ww
    integer::w1=1
  end type
  interface gen2
    subroutine r1(r2)
    end subroutine
  end interface
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
type(w)::wv1
type(ww)::wv11
call s
call s2
call gen(1.)
call gen2(1.)
if (v/=1) print *,101 
if (vv/=11) print *,1011 
if (wv1%w1/=1) print *,401
if (wv11%w1/=1) print *,402
print *,'pass'
end
    subroutine r1(r2)
       if (r2/=1) print *,301
    end subroutine

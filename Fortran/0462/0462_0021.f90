module m1
  implicit none
  real::v,x(2)=[1,2]
  pointer(p,v(2))
  pointer(p1,vx(2))
  pointer(p2,vy(2))
  real::vx,vy
  type w
    integer::w1=1
  end type
  interface gen
    subroutine r1(r2)
    end subroutine
  end interface
  private::p1,p2
contains
  subroutine s
    p=loc(x)
    p1=loc(x)
    p2=loc(x)
  end subroutine
end
module m2
  use m1
  private 
  public::s
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
  real::vvx,vvy
  real::vv,x(2)=[1,2]
  pointer(p1,vv(2))
  pointer(p,vvx(2))
  pointer(p2,vvy(2))
  private::p1,p2
contains
  subroutine s2
    p=loc(x)
    p1=loc(x)
    p2=loc(x)
  end subroutine
end
module m21
  use m11
  private 
  public::s2
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
if (v(1)/=1) print *,111 
if (vv(1)/=1) print *,1111 
if (v(2)/=2) print *,101 
if (vv(2)/=2) print *,1011 
if (vx(1)/=1) print *,111 
if (vvx(1)/=1) print *,1111 
if (vx(2)/=2) print *,101 
if (vvx(2)/=2) print *,1011 
if (wv1%w1/=1) print *,401
if (wv11%w1/=1) print *,402
if (vy(1)/=1) print *,111 
if (vvy(1)/=1) print *,1111 
if (vy(2)/=2) print *,101 
if (vvy(2)/=2) print *,1011 
print *,'pass'
end
    subroutine r1(r2)
       if (r2/=1) print *,301
    end subroutine
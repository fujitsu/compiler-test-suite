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
  private
  public::v,vx,vy
  public::w,gen,s
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
  public::s,wz1
  type wz1
    integer::w1=1
  end type
end
module m11
  implicit none
  private
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
  public::vv,vvx,vvy
  public::ww,gen2,s2
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
  public::s2,gen3
  interface gen3
    subroutine r1(r2)
    end subroutine
  end interface
end
use m1,only:v,vx,vy,w,gen
use m2,only:s,wz1
use m21,only:s2,gen3
use m11,only:s2,ww,gen2,vv,vvx,vvy
use m1
use m2
use m21
use m11
type(w)::wv1
type(ww)::wv11
type(wz1)::wv12
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
if (wv12%w1/=1) print *,4021
if (vy(1)/=1) print *,111 
if (vvy(1)/=1) print *,1111 
if (vy(2)/=2) print *,101 
if (vvy(2)/=2) print *,1011 
print *,'pass'
end
    subroutine r1(r2)
       if (r2/=1) print *,301
    end subroutine


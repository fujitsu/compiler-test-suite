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
  public::w,gen
  common /bp1/ p1
  common /bp/ p
  common /bp2/ p2
end
module m2
  use m1
  private 
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
  common /ap1/ p1
  common /ap/ p
  common /ap2/ p2
  public::vv,vvx,vvy
  public::ww,gen2
end
module m21
  use m11
  private 
end
  subroutine s2
  real::vv,x(2)=[1,2]
  real::vvx,vvy
  pointer(p1,vv(2))
  pointer(p,vvx(2))
  pointer(p2,vvy(2))
  common /ap1/ p1
  common /ap/ p
  common /ap2/ p2
    p=loc(x)
    p1=loc(x)
    p2=loc(x)
  end subroutine
  subroutine s
  implicit none
  real::x(2)=[1,2]
  real::vx,vy,v
  pointer(p,v(2))
  pointer(p1,vx(2))
  pointer(p2,vy(2))
  common /bp1/ p1
  common /bp/ p
  common /bp2/ p2
    p=loc(x)
    p1=loc(x)
    p2=loc(x)
  end subroutine
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

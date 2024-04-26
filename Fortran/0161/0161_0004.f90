module m1
  type x0
    integer::xx2=2
  end type
  type,extends(x0):: x
    integer::x1=1
  end type
  type(x),save:: v(4:5)
integer::st(2),k=2
class(x0),pointer::xv
contains
subroutine s1
class(x0),pointer:: aa(:)
allocate(x:: xv)

allocate(aa,mold=[xv,xv],stat=st(k))
if (st(2)/=0) print *,301
if (any(ubound(aa)/=2)) print *,200
kk=0
select type (aa)
 typeis(x)
    kk=1
end select
!
allocate(aa(5),mold=xv,stat=st(k))
if (st(2)/=0) print *,301
if (any(ubound(aa)/=5)) print *,300
kk=0
select type (aa)
 typeis(x)
    kk=1
end select
if (kk/=1) print *,802
end subroutine
end
use m1
call s1
print *,'pass'
end

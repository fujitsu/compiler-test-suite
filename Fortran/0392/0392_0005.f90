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
class(x0),pointer:: aa(:),as
allocate(x:: xv)

allocate(aa(2),mold=xv,stat=st(k))
if (st(2)/=0) print *,301
if (any(ubound(aa)/=2)) print *,100
kk=0
select type (aa)
 typeis(x)
    kk=1
aa%x1=0
end select
if (kk/=1) print *,501
allocate(as,mold=xv,stat=st(k))
if (st(2)/=0) print *,301
kk=0
select type (as)
 typeis(x)
    kk=1
as%x1=0
end select
if (kk/=1) print *,501
allocate(as,aa(2),mold=xv,stat=st(k))
if (st(2)/=0) print *,301
kk=0
select type (as)
 typeis(x)
    kk=1
end select
if (kk/=1) print *,501
kk=0
select type (aa)
 typeis(x)
    kk=1
aa%x1=0
end select
if (any(ubound(aa)/=2)) print *,105

allocate(aa,mold=[xv,xv],stat=st(k))
if (st(2)/=0) print *,301
if (any(ubound(aa)/=2)) print *,200
kk=0
select type (aa)
 typeis(x)
    kk=1
aa%x1=0
end select
allocate(as,aa,mold=[xv,xv],stat=st(k))
if (st(2)/=0) print *,301
kk=0
select type (aa)
 typeis(x)
    kk=1
aa%x1=0
end select
if (any(ubound(aa)/=2)) print *,205
kk=0
select type (as)
 typeis(x)
    kk=1
as%x1=0
end select

allocate(aa(5),mold=xv,stat=st(k))
if (st(2)/=0) print *,301
if (any(ubound(aa)/=5)) print *,300
kk=0
select type (aa)
 typeis(x)
    kk=1
aa%x1=0
end select
kk=0
select type (as)
 typeis(x)
    kk=1
as%x1=0
end select
end subroutine
end
use m1
call s1
print *,'pass'
end

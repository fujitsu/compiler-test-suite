module m1
  type x
    integer::x1=1
  end type
  type(x):: v(4:5)=[x(2),x(2)]
integer::st(2),k=2
contains
subroutine s1
type(x),pointer:: aa(:),as

allocate(aa(2),mold=x(2),stat=st(k))
if (st(2)/=0) print *,301
if (any(ubound(aa)/=2)) print *,100
if (any(aa%x1/=1)) print *,101
aa%x1=0
allocate(as,mold=x(2),stat=st(k))
if (st(2)/=0) print *,301
if (   (as%x1/=1)) print *,102
as%x1=0
allocate(as,aa(2),mold=x(3),stat=st(k))
if (st(2)/=0) print *,301
if (any(aa%x1/=1)) print *,103
if (   (as%x1/=1)) print *,104
if (any(ubound(aa)/=2)) print *,105

allocate(aa,mold=[x(2),x(2)],stat=st(k))
if (st(2)/=0) print *,301
if (any(ubound(aa)/=2)) print *,200
if (any(aa%x1/=1)) print *,201
aa%x1=0
allocate(as,aa,mold=[x(2),x(2)],stat=st(k))
if (st(2)/=0) print *,301
if (any(aa%x1/=1)) print *,203
if (   (as%x1/=1)) print *,204
if (any(ubound(aa)/=2)) print *,205

allocate(aa,mold=v,stat=st(k))
if (st(2)/=0) print *,301
if (any(ubound(aa)/=5)) print *,300
if (any(aa%x1/=1)) print *,301
aa%x1=0
allocate(as,aa,mold=v,stat=st(k))
if (st(2)/=0) print *,301
if (any(aa%x1/=1)) print *,303
if (   (as%x1/=1)) print *,304
if (any(ubound(aa)/=5)) print *,305
end subroutine
end
use m1
call s1
print *,'pass'
end

module m1
character(:),pointer:: aa(:),as
character(2),pointer:: ba(:),bs
character(1)::x(2)
integer::st(2)=0,k=2
contains
subroutine s1

allocate(aa(2),mold=x(2),stat=st(k))
if (any(ubound(aa)/=2)) print *,100
if (st(2)/=0) print *,101
if (len(aa)/=1) print *,901
allocate(as,mold=x(2),stat=st(k))
if (len(as)/=1) print *,901
if (st(2)/=0) print *,101
allocate(as,aa(2),mold=x(2)//'x')
if (st(2)/=0) print *,101
if (any(ubound(aa)/=2)) print *,105
if (len(aa)/=2) print *,901
if (len(as)/=2) print *,901

allocate(ba(2),mold=x(2)//'x',stat=st(k))
if (any(ubound(ba)/=2)) print *,100
if (st(2)/=0) print *,101
if (len(ba)/=2) print *,901
allocate(bs,mold='x'//x(2),stat=st(k))
if (len(bs)/=2) print *,901
if (st(2)/=0) print *,101
allocate(bs,ba(2),mold=x(2)//'x')
if (st(2)/=0) print *,101
if (any(ubound(ba)/=2)) print *,105
if (len(ba)/=2) print *,931
if (len(bs)/=2) print *,931
end subroutine
end
use m1
call s1
print *,'pass'
end

module m1
contains
subroutine s1(k1,k2)
target::k1,n1
pointer::k2,n2
n1=1
k2=>k1
n2=>n1
if (k2/=1) print *,101
if (n2/=1) print *,102
end subroutine
subroutine s2
pointer p1,p2(:)
allocatable a1,a2(:)
type x1
integer,pointer:: p3,p4(:)
integer,allocatable:: a3,a4(:)
end type
type (x1)::v
allocate(p1,p2(2),v%p3,v%p4(2))
allocate(a1,a2(2),v%a3,v%a4(2))
allocate(p1,p2(2),v%p3,v%p4(2))
allocate(p1,p2(2),v%p3,v%p4(2))
allocate(a1,a2(2),v%a3,v%a4(2),stat=k)
if (k==0) print *,201
end subroutine
end
use m1
target::k1
pointer::k2
k1=1
call s1(k1,k2)
if (k2/=1) print *,103
print *,'pass'
end

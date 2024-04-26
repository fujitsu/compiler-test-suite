module m1
type x
 integer:: x1
 integer,allocatable:: x2
end type
type (x):: v(2)
contains
subroutine s(v1,v2)
type (x),value:: v1,v2
if (.not.allocated(v1% x2 ) ) print *,400
if (.not.allocated(v2% x2 ) ) print *,400
v1%x2=10
v2%x2=10
if ((v1%x2/=10)) print *,402
if ((v2%x2/=10)) print *,402
end subroutine
end
use m1
v%x1=1
k=2
allocate(v(1)% x2 , source=2)
allocate(v(2)% x2 , source=3)
if (   (v(1)%x2/=2)) print *,301
if (   (v(2)%x2/=3)) print *,301
call s( v(k), v(k-1) )  
if (   (v(1)%x2/=2)) print *,302
if (   (v(2)%x2/=3)) print *,303
print *,'pass'
end

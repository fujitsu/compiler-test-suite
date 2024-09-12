module m1
  integer,target    ::t1(2)=1
  integer,target    ::t2(2)=2
  integer           ::t0(2)=1
  integer(8)        ::mmm
type x
  integer:: z1
  integer,contiguous,pointer::p1(:)
  integer,allocatable::x1(:)
end type
type (x):: v(2)
contains
subroutine ss(a1)
  integer,contiguous::a1(:)
  allocate(v(2)%x1(2))
v(2)%x1=t1
v(2)%p1=>t1
call=z(v(2)%p1,1,1)
call=z(a1,1,2)
call=y(v(2)%x1,1,1)
if (call/=0) print *,901

!$omp parallel firstprivate(v,a1)
v(2)%x1=t2
a1=t2
v(2)%p1=>t2
mmm=loc(v(2)%p1)
call=z(v(2)%p1,2,3)
mmm=loc(a1)
call=z(a1,2,3)
mmm=loc(v(2)%x1)
call=y(v(2)%x1,2,3)
!$omp end parallel
end subroutine
subroutine s1
  call ss(t0)
end subroutine
function y(a,n,k) result(r)
integer:: a(2),r
if (k==1) then
  if (loc(a)/=loc(v(2)%x1)) print *,1301
else
  if (loc(a)/=mmm) print *,1303
endif
if (any(a/=n)) print *,400
r=0
end function
function   z(a,n,k) result(r)
integer:: a(2),r
r=0
if (k==1) then
  if (loc(a)/=loc(t1)) print *,301
else if (k==2) then
  if (loc(a)/=loc(t0)) print *,302
else
  if (loc(a)/=mmm) print *,303
endif
if (any(a/=n)) print *,400
end function  
end
use m1
call omp_set_num_threads(1)
call s1
print *,'pass'
end

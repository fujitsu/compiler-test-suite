module m1
  integer,contiguous,pointer::p1(:)
  integer,target    ::t1(2)=1
  integer,target    ::t2(2)=2
  integer,allocatable::x1(:)
  integer           ::t0(2)=1
  integer(8)        ::mmm
contains
subroutine ss(a1)
  integer,contiguous::a1(:)
  allocate(x1(2))
x1=t1
p1=>t1
call=z(p1,1,1)
call=z(a1,1,2)
if (call/=0) print *,401

!$omp parallel private(p1,a1,x1)
x1=t2
a1=t2
p1=>t2
mmm=loc(p1)
call=z(p1,2,3)
mmm=loc(a1)
call=z(a1,2,3)
!$omp end parallel
end subroutine
subroutine s1
  call ss(t0)
end subroutine
function   z(a,n,k)
integer:: a(2)
if (k==1) then
  if (loc(a)/=loc(t1)) print *,301
else if (k==2) then
  if (loc(a)/=loc(t0)) print *,302
else
  if (loc(a)/=mmm) print *,303
endif
if (any(a/=n)) print *,400
z=0
end function 
end
use m1
call omp_set_num_threads(1)
call s1
print *,'pass'
end


module m1
  integer,contiguous,pointer::p1(:)
  integer,target    ::t1(2)=1
  integer,target    ::t2(2)=2
  integer,allocatable::x1(:)
contains
subroutine ss(a1)
  integer,contiguous::a1(:)
  allocate(x1(2))
x1=t1
p1=>t1
k1=1
  if (p1(k1)/=1  ) print *,101
  if (p1( 1)/=1  ) print *,102
  if (a1(k1)/=1  ) print *,103
  if (a1( 1)/=1  ) print *,104
  if (x1(k1)/=1  ) print *,105
  if (x1( 1)/=1  ) print *,106
p1=3
a1=3
  if (any(p1/=3)  ) print *,107
  if (any(a1/=3)  ) print *,108

!$omp parallel private(p1,a1,x1)
x1=t2
a1=t2
p1=>t2
  if (p1(k1)/=2  ) print *,201
  if (p1( 1)/=2  ) print *,202
  if (a1(k1)/=2  ) print *,203
  if (a1( 1)/=2  ) print *,204
  if (x1(k1)/=2  ) print *,205
  if (x1( 1)/=2  ) print *,206
!$omp end parallel
!$omp parallel private(a1) firstprivate(p1)
p1=4
a1=4
  if (any(p1/=4)  ) print *,207
  if (any(a1/=4)  ) print *,208
!$omp end parallel
end subroutine
subroutine s1
  integer           ::t0(2)=1
  call ss(t0)
end subroutine
end
use m1
call s1
print *,'pass'
end


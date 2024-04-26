module m1
type x
  integer:: x1=1
  integer:: x2=2
end type
contains
subroutine s1(v)
type(x),allocatable:: v
!$omp parallel private(v)
allocate(v)
if (v%x1/=1) print *,101
if (v%x2/=2) print *,102
!$omp end parallel
call s2(v)
end subroutine
subroutine s2(v)
type(x),allocatable:: v
!$omp parallel private(v)
allocate(v)
if (v%x1/=1) print *,201
if (v%x2/=2) print *,202
!$omp end parallel
end subroutine
end
use m1
type(x),allocatable:: v
call s1(v)
print *,'pass'
end

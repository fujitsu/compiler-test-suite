module m1
type x
  integer:: x1=1
  integer:: x2=2
end type
type(x),save,allocatable:: v
contains
subroutine s1
call s11
contains
subroutine s11
!$omp parallel private(v)
allocate(v)
if (v%x1/=1) print *,101
if (v%x2/=2) print *,102
!$omp end parallel
call s12
end subroutine
subroutine s12
!$omp parallel private(v)
allocate(v)
if (v%x1/=1) print *,201
if (v%x2/=2) print *,202
!$omp end parallel
end subroutine
end subroutine
end
use m1
call s1
print *,'pass'
end

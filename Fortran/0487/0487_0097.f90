module m1
contains
subroutine s
integer,pointer:: p(:)
allocate(p(2),source=3)
if (any(p/=3)) print *,203
!$omp parallel private(p)
allocate(p(4),source=4)
if (any(p/=4)) print *,204
!$omp parallel firstprivate(p)
if (any(p/=4)) print *,205
!$omp end parallel
if (any(p/=4)) print *,206
!$omp end parallel
end subroutine
end
use m1
call s
print *,'pass'
end

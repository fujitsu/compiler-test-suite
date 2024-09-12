module m1
contains
subroutine s(p)
integer,intent(in),pointer:: p(:)
!$omp parallel firstprivate(p)
p=1
if (any(p/=1)) print *,201
!$omp end parallel
end subroutine
end
use m1
integer,pointer:: p(:)
allocate(p(2))
call s(p)
print *,'pass'
end

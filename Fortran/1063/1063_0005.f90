module m1
type x
integer(8)::      m3(2)
integer(8)::      t3
end type
type(x),allocatable::v(:)
!$omp threadprivate(v)
end
subroutine s1
use m1
!$omp parallel
allocate(v(2))
v%t3=-1
!$omp end parallel
v%t3=3
!$omp parallel copyin (v)
if (    any(v%t3/=3)) print *,1133,v%t3
!$omp end parallel
end subroutine
call s1
print *,'pass'
end

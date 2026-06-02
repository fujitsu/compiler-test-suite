module m1
type x
character(1) ,allocatable::      m3(:)
integer(8)::      t3
end type
type(x),allocatable::v
!$omp threadprivate(v)
end
subroutine s1
use m1
!$omp parallel
allocate(v)
v%t3=-1
!$omp end parallel

!$omp parallel copyin (v)
if (    v%t3/=-1) print *,1131,v%t3
!$omp single 
v%t3=3
!$omp end single copyprivate(v)
if (    v%t3/=3) print *,1133,v%t3
!$omp end parallel
end subroutine
call s1
print *,'pass'
end

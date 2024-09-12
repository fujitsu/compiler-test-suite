module m1
type x
integer(4)::      m3
integer(4)::      t3(2)
end type
type(x),allocatable::v
!$omp threadprivate(v)
end
subroutine s1
use m1
!$omp parallel
allocate(v)
v%m3=-2
v%t3=-1
!$omp end parallel

!$omp parallel
!$omp single 
v%t3=3
!$omp end single copyprivate(v)
if (    any(v%t3/=3)) print *,1133,v%t3
if (       (v%m3/=-2)) print *,1134,v%m3
!$omp end parallel
end subroutine
call s1
print *,'pass'
end



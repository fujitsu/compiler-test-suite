module m1
type x
integer(4)::      m3
integer(4)::      t3(2)
end type
type(x),allocatable::v(:)
!$omp threadprivate(v)
end
subroutine s1
use m1
!$omp parallel
allocate(v(2))
v(1)%t3=-1
v(2)%t3=-1
!$omp end parallel
v(1)%t3=3
v(2)%t3=3
!$omp parallel copyin (v)
if (    any(v(1)%t3/=3)) print *,1133,v(1)%t3
if (    any(v(2)%t3/=3)) print *,1134,v(2)%t3
!$omp end parallel
end subroutine
call s1
print *,'pass'
end

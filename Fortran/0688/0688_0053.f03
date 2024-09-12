module m1
type typ1
integer::z
end type
integer x
type(typ1),pointer::type
end
subroutine s1
use m1
call s2
call s3
end subroutine
subroutine s2
use m1
!$omp task firstprivate(type)
x=type%z
!$omp end task
end subroutine
use m1
allocate (type)
!$omp task firstprivate(type)
type%z=1
call s1
if (x.ne.1) print*,'err'
!$omp end task
print *,'pass'
end
subroutine s3
use m1
!$omp sections firstprivate(type) lastprivate(type)
!$omp section
x=type%z
!$omp end sections
end subroutine

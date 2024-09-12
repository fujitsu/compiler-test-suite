module m1
  type a1
    integer:: d
    integer,allocatable:: a
  end type
end
subroutine s1
use m1
  type (a1),allocatable:: t
allocate ( t)
allocate ( t%a )
t%a=1
!$omp parallel 
!$omp sections lastprivate( t ) firstprivate( t )
!$omp section
if (.not.allocated( t%a)) write(6,*)1051
if (t%a/=1) print *,1053
t%a=2
if (t%a/=2) print *,1054
!$omp end sections
!$omp end parallel
if (t%a/=2) print *,1055

!$omp parallel
!$omp sections lastprivate( t ) 
!$omp section
t%a=3
if (t%a/=3) print *,2054
!$omp end sections
!$omp end parallel
if (t%a/=3) print *,2055
end
call s1
print *,'pass'
end

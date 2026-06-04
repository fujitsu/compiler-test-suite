module m1
integer      k1,n2,m3
pointer::n2
allocatable m3
!$omp threadprivate(n2,k1,m3)
end
subroutine s1
use m1
k1=1
!$omp parallel 
allocate(n2,m3)
!$omp end parallel
n2=2
m3=3
!$omp parallel copyin (m3,k1,n2)
if (k1/=1) print *,1131
if (   (n2/=2)) print *,1132
if (   (m3/=3)) print *,1133
!$omp end parallel
end subroutine
call s1
print *,'pass'
end



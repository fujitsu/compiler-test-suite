module m1
common /cmn/ k1,n2
pointer::n2(:)
!$omp threadprivate(/cmn/)
end
subroutine s1
use m1
!$omp parallel 
allocate(n2(2))
!$omp end parallel
!$omp parallel copyin (k1,n2)
!$omp single 
k1=1
n2=2
!$omp end single copyprivate(n2,k1)
if (k1/=1) print *,1131
if (any(n2/=2)) print *,1132
!$omp end parallel
end subroutine
call s1
print *,'pass'
end

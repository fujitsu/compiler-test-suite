module m1
common /cmn/ k1
!$omp threadprivate(/cmn/)
end
subroutine s1
use m1
k1=1
!$omp parallel copyin (k1)
if (k1/=1) print *,1131
!$omp end parallel
end subroutine
call s1
print *,'pass'
end



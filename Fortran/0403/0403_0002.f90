module m1
integer::k1
!$omp threadprivate( k1 )
end
subroutine s1
use m1
k1=101
!$omp parallel copyin(k1)
if (k1/=101) print *,101
call ss
!$omp end parallel
end
call s1
print *,'pass'
end
subroutine ss
use m1
if (k1/=101) print *,3101
end

module m1
 integer,save:: k
!$omp threadprivate( k )
end
 subroutine s1
use m1
if (k/=0) print *,102,k
if (k/=0) print '(z8.8)',k
end subroutine

call s1
print *,'pass'
end

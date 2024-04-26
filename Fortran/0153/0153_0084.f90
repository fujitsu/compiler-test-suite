module m1
!$omp threadprivate( k)
 integer,pointer::k
end
use m1
print *,'pass'
end

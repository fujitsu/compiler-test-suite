module m1
integer n1,n2
!$omp threadprivate(n2)
private n2
end
 subroutine s1
use  m1
 n1=1
end
use  m1
call s1
if (n1/=1) print *,101
print *,'pass'
end

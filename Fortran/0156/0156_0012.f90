module m1
integer n1,n2
!$omp threadprivate(n2)
end
 subroutine s1
use  m1
write(11,*) n2
end
use  m1
n2=1
if (n2/=1) print *,101
print *,'pass'
end

module m1
!$omp threadprivate(k4)
integer,save::k4
end
subroutine s1
use m1
k4=4
if (k4/=4) print *,104
end
call s1
print *,'pass'
end

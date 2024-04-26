module m1
!$omp threadprivate(k4,k5)
integer::k4(2)
integer::k5(2)
end
module m2
integer::k4(2)
integer::k5(2)
!$omp threadprivate(k4,k5)
end
subroutine s1
!$omp threadprivate(k4,k5)
integer,save::k4(2)
integer,save::k5(2)
k4=4
k5=5
if (any(k4/=4)) print *,104
if (any(k5/=5)) print *,105
end
subroutine s2
integer,save::k4(2)
integer,save::k5(2)
!$omp threadprivate(k4,k5)
k4=4
k5=5
if (any(k4/=4)) print *,104
if (any(k5/=5)) print *,105
end
subroutine s11
use m1
k4=4
k5=5
if (any(k4/=4)) print *,104
if (any(k5/=5)) print *,105
end
subroutine s12
use m2
k4=4
k5=5
if (any(k4/=4)) print *,104
if (any(k5/=5)) print *,105
end
call s1
call s2
call s11
call s12
print *,'pass'
end

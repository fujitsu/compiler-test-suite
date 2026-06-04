module m
contains
subroutine s
!$omp atomic capture
a=b
b=1
!$omp end atomic
contains
function fun() result(b)
!$omp atomic capture
a=b
b=1
!$omp end atomic

end function
end subroutine
end
use m
print *,'pass'
end

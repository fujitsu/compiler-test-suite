module m
contains
subroutine sss
!$omp atomic capture
j=i
i=fun()
!$omp end atomic

!$omp atomic capture
k=i
i=j**1
!$omp end atomic
!$omp atomic capture
j=i
i=i*1
!$omp end atomic
end subroutine
function fun() result(i)
i=1
end function
end module
use m
print *,'pass'
end

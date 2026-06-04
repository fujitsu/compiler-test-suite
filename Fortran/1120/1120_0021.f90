module mod1
 integer :: i1,i2,i3,i4
end module  

subroutine sub4()
use mod1

!$omp task
    i2=2
!$omp task
    i1=1
!$omp end task
!$omp task
    i3=3
!$omp end task
!$omp end task
print *,'pass'
end

call sub4
end

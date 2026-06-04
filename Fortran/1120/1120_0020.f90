subroutine sub1()
integer :: i1,i2,i3,i4
!$omp parallel
!$omp task
    i1=1
!$omp end task
    i2=2
!$omp end parallel
end

subroutine sub2()
integer :: i1,i2,i3,i4
!$omp parallel
!$omp task
    i1=1
!$omp end task
!$omp parallel
!$omp task
    i2=2
!$omp end task
!$omp end parallel
!$omp end parallel
end

subroutine sub3(i1,i2,i3,i4)
integer :: i1,i2,i3,i4
!$omp task
    i1=1
!$omp end task
!$omp task
    i2=2
!$omp end task
end

module mod1
 integer :: i1,i2,i3,i4
end module  
subroutine sub4()
use mod1

!$omp task
    i1=1
!$omp end task

!$omp task
    i2=2
!$omp end task
end

print *,'pass'
end

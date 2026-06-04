subroutine sub(i1,i2,i3,i4)
integer :: i1,i2,i3,i4
!$omp parallel
!$omp task private(i5)
    i1=1
    i5=1
    i6=1
!$omp end task
!$omp task
    i2=2
    i5=1
    i6=1
!$omp end task
!$omp task 
    i3=3
    i5=1
!$omp task
    i4=4
    i6=1
!$omp end task
!$omp end task
!$omp end parallel
end
integer :: i1,i2,i3,i4
call sub(i1,i2,i3,i4)
print *,'pass'
end

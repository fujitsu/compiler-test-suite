subroutine sub(i1,i2,i3,i4)
integer :: i1,i2,i3,i4
!$omp parallel
!$omp task
    i1=1
!$omp end task
!$omp end parallel
end

integer :: i1,i2,i3,i4
call sub(i1,i2,i3,i4)
print *, 'pass'
end

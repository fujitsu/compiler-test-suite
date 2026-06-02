subroutine sub(i1,i2)
integer :: i1,i2
integer :: ii(10)

!$omp task
!$omp task
   i1 =1
!$omp end task
!$omp task
   do i1 =1,10
    ii(i1) =1
   enddo
!$omp end task
!$omp end task
end
integer :: i1,i2
call sub(i1,i2)
print *,'pass'
end

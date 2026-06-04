subroutine sub(i1,i2,i3,i4)
integer :: i1,i2,i3,i4
integer :: i5(10), i6(10)

call omp_set_num_threads(2)
i5=1
i6=3

!$omp parallel
!$omp task
    i5=5
!$omp end task
!$omp task
    i2=2
!$omp end task
!$omp end parallel

!$omp parallel
!$omp task 
  do i=1,10
   i5(i)=i5(i)
  enddo   
!$omp end task
  print *,i6
!$omp end parallel
end
integer :: i1,i2,i3,i4
call sub(i1,i2,i3,i4)
print *,'pass'
end

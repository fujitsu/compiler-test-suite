subroutine sub(i1,i2,i3)
integer :: i1,i2,i3
integer :: i5(10), i6(10),i7

i5=8
!$omp task
  i7=0
!$omp task
  i5=5
!$omp end task
!$omp task
  i2=2
!$omp end task
!$omp task 
  i3=3
!$omp task 
  do i=1,10
   i5(i)=i5(i)
  enddo   
!$omp end task
  print *,i5
!$omp end task
!$omp end task
end

integer :: i1,i2,i3
call sub(i1,i2,i3)
print *,'pass'
end

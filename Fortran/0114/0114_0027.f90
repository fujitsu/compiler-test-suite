program main
common/com/j(2)
!$omp parallel do
do i=1,1
  j(i)=i
  call sub(i)
enddo
!$omp end parallel do
!$omp parallel do
do i=2,2
  j(i)=i
  call sub(i)
enddo
!$omp end parallel do
end 

subroutine sub(i)
common/com/j(2)
  print *,'PASS',i+j(i)
end 

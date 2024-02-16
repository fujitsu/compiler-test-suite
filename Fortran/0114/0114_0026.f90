program main
!$omp parallel do
do i=1,1
  call sub(i)
enddo
!$omp end parallel do
!$omp parallel do
do i=2,2
  call sub(i)
enddo
!$omp end parallel do
end 

subroutine sub(i)
  print *,'PASS',i
end 

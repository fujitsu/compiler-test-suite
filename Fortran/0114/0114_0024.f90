program main
!$omp parallel do
do i=1,1
  call sub
enddo
!$omp end parallel do
end 

subroutine sub
  print *,'PASS'
end 

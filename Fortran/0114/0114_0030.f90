program main
call foo(1)
end

subroutine foo(j)
!$omp parallel do
do i=1,1
  call sub(i,j)
enddo
!$omp end parallel do
!$omp parallel do
do i=2,2
  call sub(i,j)
enddo
!$omp end parallel do
end 

subroutine sub(i,j)
  integer k
  k = i+j
  print *,'PASS',k
end 

program main
call foo(1)
end

subroutine foo(j)
!$omp parallel do
do i=1,1
  call sub(i,j,1)
  call sub(i,j,2)
enddo
!$omp end parallel do
!$omp parallel do
do i=2,2
  call sub(i,j,1)
  call sub(i,j,2)
enddo
!$omp end parallel do
end 

subroutine sub(i,j,l)
  integer :: k
  k = i+j
  if( l .eq. 1 ) print *,'PASS',k
end 

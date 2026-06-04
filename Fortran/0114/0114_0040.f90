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
  integer,save:: k(2)
!$omp master
  call sleep(1)
!$omp endmaster
!$omp critical
  k(i) = i+j
  print *,'PASS',k(i)
!$omp end critical
end 

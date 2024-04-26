program simple
  implicit none
  integer,parameter:: N = 100
  integer::i=0
  integer::j=0
!$omp parallel do ordered schedule(simd:dynamic)
  do i=1, N
!$omp ordered threads
    j=j+1
!$omp end ordered
  end do
!$omp end parallel do 
!$omp parallel do ordered, schedule(simd:dynamic)
  do i=1, N
!$omp ordered threads
    j=j+1
!$omp end ordered
  end do
!$omp end parallel do
if(j==200) then
  print *, 'pass'
else
  print *, 'j=',j
endif
end program

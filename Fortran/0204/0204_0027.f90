program simple
  implicit none
  integer,parameter:: N = 100
  integer::i=1
  integer::j=0
!$omp parallel
!$omp do schedule(monotonic,simd:static,1)
  do i=1, N
  !$omp atomic
    j=j+1
  !$omp end atomic
  end do
!$omp end do
!$omp end parallel
if(j==100) then
  print *, 'pass'
else
  print *, 'j=',j
endif
end program

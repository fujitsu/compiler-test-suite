program simple
  implicit none
  integer::j=0
  integer,parameter:: N = 100
  integer::i=1
!$omp parallel do ordered
  do i=1, N
!$omp atomic
    j=j+1
!$omp end atomic
  end do
!$omp end parallel do
if(j==100) then
  print *, 'pass'
else
  print *, 'j=',j
endif
end program

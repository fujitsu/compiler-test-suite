program simple
  implicit none
  integer::j=0
  integer,parameter:: N = 100
  integer::i=1
!$omp do ordered
  do i=1, N
    j=j+1
  end do
!$omp end do
if(j==100) then
  print *, 'pass'
else
  print *, 'j=',j
endif
end program

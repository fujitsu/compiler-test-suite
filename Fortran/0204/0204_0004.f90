program simple
  implicit none
  integer,parameter:: N = 100
  integer::i=0
  integer::j=0
!$omp do ordered(1) schedule(dynamic)
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

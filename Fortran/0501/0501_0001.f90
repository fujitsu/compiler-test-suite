program main
  implicit none
  integer,parameter:: N = 100
  integer::i
  integer::h=0
!$omp parallel do ordered
  do i=1,N
!$omp ordered
        h=h+1
!$omp end ordered
  end do
!$omp end parallel do
if(h==100) then
  print *, 'pass'
else
  print *, 'h=',h
endif
end program

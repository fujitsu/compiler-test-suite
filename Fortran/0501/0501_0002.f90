program main
  implicit none
  integer,parameter:: N = 100
  integer::i
  integer::h=0
  do i=1,N
!$omp ordered
        h=h+1
!$omp end ordered
  end do
if(h==100) then
  print *, 'pass'
else
  print *, 'h=',h
endif
end program

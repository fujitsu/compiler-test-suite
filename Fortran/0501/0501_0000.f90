program main
  implicit none
  integer,parameter:: N = 100
  integer::i,j,k
  integer::h=0
!$omp do ordered
  do i=1,N
    do j=1,N
      do k=1,N
!$omp ordered
        h=h+1
!$omp end ordered
      end do
    end do
  end do
!$omp end do
if(h==1000000) then
  print *, 'pass'
else
  print *, 'h=',h
endif
end program

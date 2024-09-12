program simple
  implicit none
  integer,parameter:: N = 100
  integer::i
  integer::h=0
!$omp simd
  do i=1,N
!$omp ordered simd
        h=h+1
!$omp end ordered
  end do
!$omp end simd
if(h==100) then
  print *, 'pass'
else
  print *, 'h=',h
endif
end program

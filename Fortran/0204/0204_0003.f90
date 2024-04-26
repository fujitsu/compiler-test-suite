program simple
  implicit none
  integer,parameter:: N = 100
  integer::i=0
  integer::A(100)=0
  integer::B(100)=100
!$omp parallel do simd schedule(dynamic)
  do i=1, N
  A(i) = B(i)
  end do
!$omp end parallel do simd
if(A(1)==100) then
  print *, 'pass'
else
  print *, 'A(i)=',A(1)
endif
end program

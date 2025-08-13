#define EQUAL_CHECK_WITH_MARGIN(a, b) ((a == b).or.(abs(a - b)/max(abs(a),abs(b)).gt.1.0D-16))
program simple
  implicit none
  integer,parameter:: N = 100
  integer::i=1
  integer::ii=1
  integer::iii=1
  integer::iiii=1
  double precision x(N)
!$omp parallel do schedule(simd:GUIDED)
  do i=1, N
  do ii=1, N
  do iii=1, N
  do iiii=1, N
    x(i) = dble(i)/N
  end do
  end do
  end do
  end do
!$omp end parallel do
if(EQUAL_CHECK_WITH_MARGIN(sum(x), 50.500000000000000)) then
  print *, 'pass'
endif
end program

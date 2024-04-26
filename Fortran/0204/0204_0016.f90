#define EQUAL_CHECK_WITH_MARGIN(a, b) ((abs(a - b)/abs(a)) .gt. 1.0D-16)
program simple
  implicit none
  integer,parameter:: N = 100
  integer::i=1
  integer::ii=1
  integer::iii=1
  integer::iiii=1
  double precision x(N)
!$omp parallel
!$omp do schedule(monotonic:static)
  do i=1, N
  do ii=1, N
  do iii=1, N
  do iiii=1, N
    x(i) = dble(i)/N
  end do
  end do
  end do
  end do
!$omp end do
!$omp end parallel
if(EQUAL_CHECK_WITH_MARGIN(sum(x), 50.50000000000000)) then
  print *, 'pass'
endif
end program

program main
  implicit none
  integer,parameter:: N = 100
  integer::i=1
  integer::L=1
!$omp critical (test) hint((N)) hint(N)
  do i=1, N
  L=L+i
  end do
!$omp end critical (test)
!$omp critical (test), hint((N)), hint(N)
  do i=1, N
  L=L+i
  end do
!$omp end critical (test)
end program main

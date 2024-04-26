program simple
  implicit none
  integer,parameter:: N = 100
  integer::i=1
  integer::L=1
!$omp critical (test) hint(1)
  do i=1, N
  L=L+i
  end do
!$omp end critical (test)
!$omp critical (test), hint(1)
  do i=1, N
  L=L+i
  end do
!$omp end critical (test)
  if(L==10101) then
    print *,'pass'
  else
    print *,'ng',L
  endif
end program

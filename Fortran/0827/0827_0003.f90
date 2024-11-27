program main
  implicit none
  integer,parameter:: N = 100
  integer::i=1
  integer::L=1
!$omp critical (i)
  do i=1, N
  L=L+i
  end do
!$omp end critical (i)
  if(L==5051) then
    print *,'pass'
  else
    print *,'ng',L
  endif
end program main

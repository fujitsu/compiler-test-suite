program main
  implicit none
  integer :: ii

  ii = 20

  call dummy(ii)

!$omp parallel
  block 
    integer :: ii;
    ii = 10
    call dummy(ii)
    if ( ii .ne. 10 ) call abort()
  end block
!$omp end parallel

  if ( ii .ne. 20 ) call abort()

  print *, "PASS"
end

subroutine dummy(i)
  implicit none
  integer i
  i=i+0
end


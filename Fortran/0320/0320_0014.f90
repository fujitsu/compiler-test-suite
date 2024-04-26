program main
  implicit none
  integer*2, allocatable, dimension(:) :: ii
  allocate(ii(1))

  ii = 20

  call dummy(ii)

!$omp parallel
  block 
    integer*2, allocatable, dimension(:) :: ii;
    allocate(ii(1))
    ii = 10
    call dummy(ii)
    if ( any(ii .ne. 10) ) call abort()
  end block
!$omp end parallel

  if ( any(ii .ne. 20) ) call abort()

  print *, "PASS"
contains

subroutine dummy(ii)
  implicit none
  integer*2, allocatable, dimension(:) :: ii
  ii = ii + 0
end subroutine
end


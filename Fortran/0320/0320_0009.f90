program main
  implicit none
  integer,allocatable :: ii (:)
  allocate(ii(2))

  ii = 20

  call dummy(ii)

  block 
    integer,allocatable :: ii (:)
    allocate(ii(2))
    ii = 10
    call dummy(ii)
    if ( any(ii .ne. 10) ) call abort()
  end block

  if ( any(ii .ne. 20) ) call abort()

  print *, "PASS"

contains

subroutine dummy(i)
  implicit none
  integer,allocatable :: i(:)
  i=i+0
end subroutine

end

program main
  implicit none
  integer,pointer :: ii (:)
  allocate(ii(2))

  ii = 20

  call dummy(ii)

  block 
    integer*8,pointer :: ii (:)
    allocate(ii(2))
    ii = 10
    call dummy2(ii)
    if ( any(ii .ne. 10) ) call abort()
  end block

  if ( any(ii .ne. 20) ) call abort()

  print *, "PASS"

contains

subroutine dummy(i)
  implicit none
  integer,pointer :: i(:)
  i=i+0
end subroutine

subroutine dummy2(i)
  implicit none
  integer*8,pointer :: i(:)
  i=i+0
end subroutine

end

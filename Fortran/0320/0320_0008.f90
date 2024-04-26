program main
  implicit none
  integer :: ii (2)

  ii = 20

  call dummy(ii)

  block 
    integer :: ii (2)
    ii = 10
    call dummy(ii)
    if ( any(ii .ne. 10) ) call abort()
  end block

  if ( any(ii .ne. 20) ) call abort()

  print *, "PASS"
end

subroutine dummy(i)
  implicit none
  integer :: i(2)
  i=i+0
end


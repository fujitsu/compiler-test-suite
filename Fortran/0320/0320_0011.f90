program main
  implicit none
  type TAG ; integer ii; end type; type(TAG) st

  st%ii = 20

  call dummy(st%ii)

  block 
    type TAG ; integer*8 jj; end type; type(TAG) st2
    st2%jj = 10
    call dummy2(st2%jj)
    if ( st2%jj .ne. 10 ) call abort()
  end block

  if ( st%ii .ne. 20 ) call abort()

  print *, "PASS"

contains

subroutine dummy(i)
  implicit none
  integer :: i
  i=i+0
end subroutine

subroutine dummy2(i)
  implicit none
  integer*8 :: i
  i=i+0
end subroutine

end

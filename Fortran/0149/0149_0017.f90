program main
  integer(8) :: addr
  integer :: a
  block
    allocatable a(:)
    addr = loc(a)
  end block
  if (loc(a) == addr) print *,1
  print *,'pass'
end program main

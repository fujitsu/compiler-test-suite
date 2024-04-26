program main
  integer :: i=1
  integer(8) :: addr
  block
    target i
    addr = loc(i)
  end block
  if (addr == loc(i)) print *,1
  print *,'pass'
end program main

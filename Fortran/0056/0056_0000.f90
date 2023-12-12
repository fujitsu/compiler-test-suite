program main
  integer(8) :: addr
  integer :: i  
  block
    dimension :: i(3)
    addr = loc(i)
  end block
  if (addr == loc(i)) print *,1
  print *,'OK'
end program main

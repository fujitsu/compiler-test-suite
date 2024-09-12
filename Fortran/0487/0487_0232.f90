subroutine s
  integer(8) :: addr
  integer :: i  
  block
    dimension :: i(3)
    addr = loc(i)
  end block
  if (addr == loc(i)) print *,1
end
call s
  print *,'pass'
end 

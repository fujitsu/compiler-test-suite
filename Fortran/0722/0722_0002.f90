function ifunc() result(ret)
  character(10) :: ret
  ret = '1234567890'
end function
subroutine sub(arg1,arg2)
  integer :: arg2
  character(10) :: cha
  character(arg2),external :: arg1
  cha = arg1()
  print *,cha
end subroutine

interface
function ifunc()
  character(10) :: ifunc
end function
end interface
call sub(ifunc,10)
end

subroutine extr_sub ()
  integer(kind=8),target :: t1 = 3
  integer(kind=8),pointer :: p1 => t1

  print *, p1
end subroutine extr_sub

integer(kind=8) function extr_func ()
  integer(kind=8),target :: t1(3) = (/10,20,30/)
  integer(kind=8),pointer :: p1 => t1(3)
  extr_func = 0
  
  print *, p1
  return
end function extr_func

program test
  integer(kind=8) extr_func
  call extr_sub
  if (extr_func() .ne.0) print *, "NG"
end program test

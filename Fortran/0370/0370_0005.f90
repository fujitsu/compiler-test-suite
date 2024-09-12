  type tp0
     integer(kind=4) :: ma = 3
  end type tp0

  type tp1
     type(tp0) :: mf = tp0(5)
  end type tp1

  type(tp1) :: tt

  print *, tt

end

  type tp0
     integer(kind=4) :: ma = 5
  end type tp0

  type tp1
     logical(kind=8) :: md = .TRUE._4
  end type tp1

  type(tp1) :: tt

  print *, tt

end

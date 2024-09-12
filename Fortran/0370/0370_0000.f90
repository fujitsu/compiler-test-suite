  type tp0
     integer(kind=4) :: ma = 5
  end type tp0

  type tp1
     character(kind=1) :: me = 'a'
  end type tp1

  type(tp1) :: tt

  print *, tt

end

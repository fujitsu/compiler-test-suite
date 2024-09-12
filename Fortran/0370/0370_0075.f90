  type tp1
     integer(kind=4) :: ma(3) = 7_4
  end type tp1

  type(tp1) a(2)
  type(tp1) b

  print *, a
  print *, b
end

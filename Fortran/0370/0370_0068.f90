  type tp1
     integer(kind=4) :: ma(10) = 3_4
  end type tp1

  type(tp1) a
  type(tp1) b

  print *, a
  print *, b
end


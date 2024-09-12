  type tp1
     integer(kind=4) :: ma(2,4) = 10
  end type tp1

  type(tp1) a
  type(tp1) b(2)

  print *, a
  print *, b
end



  type tp1
     integer(kind=4) :: ma(3) = 7_4
     integer(kind=4) :: mb(2) = 8_4
  end type tp1

  type(tp1) a(2)

  print *, a
end

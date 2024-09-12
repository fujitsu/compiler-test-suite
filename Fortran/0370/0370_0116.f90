  type, bind(c) :: tp1
     integer(kind=4) :: ma(2) = 1
     integer(kind=4) :: mb = 3
  end type tp1
  type(tp1) t1 

  print *, t1
end


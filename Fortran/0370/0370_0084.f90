  type tp1
     integer(kind=4) :: ma(2,3) = reshape((/1,2,3,4,5,6/),(/2,3/))
  end type tp1

  type(tp1) a
  type(tp1) b

  print *, a
  print *, b
end

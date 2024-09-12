  type tp0
     integer(kind=4) :: ma = 5
  end type tp0

  type tp1
     integer(kind=8),pointer   :: ok => null()
  end type tp1

  type(tp1) :: tt
  integer(kind=8),target :: ans = -50
  tt%ok=>ans
  print *, tt%ok

end

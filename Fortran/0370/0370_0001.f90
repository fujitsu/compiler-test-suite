  type tp0
     integer(kind=4) :: ma = 5
  end type tp0

  type tp1
     complex(kind=8) :: ma = 10_4
     complex(kind=8) :: mb = 11.0_4
     complex(kind=8) :: mc = (1.0_4, 2.0_4)
  end type tp1

  type(tp1) :: tt

  print *, tt

end

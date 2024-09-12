  type tp1
     integer(kind=4) :: ma
     integer(kind=4) :: mb = 3
  end type tp1

  type, extends(tp1) :: tp2
     integer(kind=4) :: mc = 4
  end type tp2

  type, extends(tp2) :: tp3
     integer(kind=4) :: md = 5
     integer(kind=4) :: me(2)
     integer(kind=4) :: mf = 10
  end type tp3

  type(tp1) t1 
  type(tp2) t2
  type(tp3) t3
  print *, t1
  print *, t2
  print *, t3

end


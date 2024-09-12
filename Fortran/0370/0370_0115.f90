  type, abstract :: tp1
     integer(kind=4) :: ma
     integer(kind=4) :: mb = 3
  end type tp1

  type, extends(tp1) :: tp2
     integer(kind=4) :: mc
     integer(kind=4) :: md = 5
  end type tp2

  type(tp2) a
  print *, a

end


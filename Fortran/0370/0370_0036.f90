  type tp1
     sequence
     integer(kind=4) :: ma1 = 12345
  end type tp1

  type tp2
     sequence
     integer(kind=1) :: mb1 = 0
  end type tp2

  type(tp1) a
  integer(kind=1) :: b = 0

  equivalence (a, b)

  print *, a
  print *, b
end

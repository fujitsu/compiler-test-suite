  type tp1
     integer :: i41 = 1
     integer(8) :: i8 = 3
     integer :: i42 = 2
  end type tp1
  type tc
     type(tp1) :: t2(3) = (/tp1(7,4),tp1(8,5,0),tp1(9)/)
  end type tc

  type(tc) a
  print *, a
end


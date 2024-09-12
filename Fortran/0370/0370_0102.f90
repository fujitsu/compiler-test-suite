  type tp1
     integer :: i41 = 1
  end type tp1
  type tc
     type(tp1) :: t2(3) = (/tp1(7),tp1(8),tp1(9)/)
  end type tc

  type(tc) a
  print *, a
end


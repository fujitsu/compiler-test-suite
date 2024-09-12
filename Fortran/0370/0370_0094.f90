  type tp1
     integer(kind=4) :: i41 = 3_4
     integer(kind=4) :: i42 = 4_4
  end type tp1
  type tc
     type(tp1) :: t2 = tp1()
  end type tc

  type(tc) a
  print *, a
end


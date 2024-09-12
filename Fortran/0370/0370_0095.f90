  type tp1
     integer(kind=4) :: i41 = 3_4
     integer(kind=4) :: i42 = 4_4
  end type tp1
  type tc
     type(tp1) :: t1 = tp1(5_4,6_4)
     type(tp1) :: t2 = tp1(7_4)
     type(tp1) :: t3 = tp1(i42=8_4)
  end type tc

  type(tc) a
  print *, a
end


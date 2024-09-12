  type tp2
     integer(kind=8) :: i2t = 33
     integer(kind=8) :: i2u
  end type tp2

  type tp1
     integer(kind=4) :: i41 = 3_4
     integer(kind=4) :: i42 = 4_4
     type(tp2) :: ttt2
  end type tp1

  type tc
     type(tp1) :: t1
     type(tp1) :: t2 = tp1(5_4,6_4,tp2(i2u=7_4))
  end type tc

  type(tc) a
  print *, a
end


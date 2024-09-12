  type tp2
     integer(kind=8) :: i2t = 33
     integer(kind=8) :: i3t = 34
  end type tp2

  type tp1
     integer(kind=4) :: i41 = 3_4
     integer(kind=4) :: i42 = 4_4
     type(tp2) :: ttt2
     type(tp2) :: ttt3
     type(tp2) :: ttt4 = tp2(50_4)
  end type tp1
  type tc
     type(tp1) :: t1 = tp1(ttt3=tp2(8_4,9_4),ttt2=tp2(7_4))
  end type tc

  type(tc) a
  print *, a
end


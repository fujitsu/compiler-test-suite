  type tp2
     integer(kind=8) :: ita = 33_4
     integer(kind=8) :: itb = 44_4
  end type tp2

  type tp1
     integer(kind=4) :: i41 = 3_4
     integer(kind=4) :: i42 = 4_4
     type(tp2) :: ttt2
  end type tp1
  type tc
     type(tp1) :: t1 = tp1(5_4,ttt2=tp2(7_4,8_4))
     integer(kind=2) :: ii = 10_4
  end type tc

  type(tc) a
  print *, a
end


  type tp1
     integer(kind=4) :: i41 = 3_4
     integer(kind=4) :: i42 = 4_4
  end type tp1
  type tp2
     integer(kind=4) :: i43 = 10_4
  end type tp2
  type tc
     type(tp1) :: t1
     type(tp2) :: t2(10,10)
  end type tc

  type(tc) a(1)
  type(tc) b(10,10)
  print *, a
  print *, b
end
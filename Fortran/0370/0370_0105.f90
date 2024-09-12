  type tp0
     integer(kind=4) :: i41 = 6_4     
  end type tp0

  type tp1
  end type tp1
  type tc
     type(tp1) :: t2(5) = tp1()
     type(tp0) :: t3(6) = tp0()
  end type tc

  type(tc) a
  print *, a
end


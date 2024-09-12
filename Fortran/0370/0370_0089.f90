  type tp2
     integer(kind=4) :: i43 = 10_4
  end type tp2
  type tc
     type(tp2) :: t2(2) = (/tp2(7),tp2(8)/)
  end type tc

  type(tc) a
  print *, a

end

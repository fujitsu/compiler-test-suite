  type tp0
     integer(kind=4) :: t0(4) = 1
  end type tp0

  type tp1
     type(tp0) :: tt(2)
     integer(kind=4) :: t1(2) = 3
  end type tp1
  type tc
     type(tp1) :: ta = tp1((/tp0(4),tp0(5)/),6) 
     type(tp1) :: tb = tp1(tp0(7),8) 
  end type tc

  type(tc) a
  type(tc) b
  print *, a
  print *, b
end

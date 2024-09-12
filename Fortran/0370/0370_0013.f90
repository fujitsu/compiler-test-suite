  type tp1
     integer(kind=4) :: t0(3)
     integer(kind=4) :: t1(5)
  end type tp1
  type tc
     type(tp1) :: xx(0) = tp1(1,2)
     type(tp1) :: yy(0)
  end type tc

  type(tc) :: aa
  type(tc) :: bb = tc(tp1(3,4),(tp1(5,6)))

  print *, aa
  print *, bb
end


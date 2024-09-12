  type tp1
     integer(kind=4) :: t0(0)
     integer(kind=4) :: t1(5) = 0
  end type tp1

  type tp2
     integer(kind=4) :: t0(0) = 10
     integer(kind=4) :: t1(5) = 0
  end type tp2

  type tc
     type(tp1) :: xx = tp1(1,2)
     type(tp2) :: yy = tp2(3,4)
  end type tc

  type(tp1) aa
  type(tp2) bb
  type(tc)  cc

  print *, aa%t1
  print *, bb%t1
  print *, cc
end

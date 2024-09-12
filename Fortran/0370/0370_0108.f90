  type tp0
     integer(kind=4) :: t0(2) = 10
  end type tp0

  type tp1
     integer(kind=4) :: t1(2) = 3
     integer(kind=4) :: t2(2) = (/3,4/)
     type(tp0) :: tt(0) = tp0(1)
  end type tp1

  type tc
     type(tp1) :: tb = tp1(8)
  end type tc

  type(tc) a(2)
  print *, a(1)
  print *, a(2)
end

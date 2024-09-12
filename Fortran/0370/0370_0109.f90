  type tp0
     integer(kind=4) :: t0(2) = 1
  end type tp0

  type tp1
     integer(kind=4) :: t1(2) = 3
     integer(kind=4) :: t2(2) = (/3,4/)
     type(tp0) :: tt(1) = tp0(1)
  end type tp1

  type tc
     type(tp1) :: tb = tp1(8)
  end type tc

  type td
     type(tc) :: taa(2)
     type(tc) :: tbb = tc()
     type(tc) :: tcc = tc(tp1(5,(/6,7/),tp0((/10,11/))))
     integer(kind=4) :: aa
  end type td

  type(td) a(2)
  print *, a(1)
  print *, a(2)
end

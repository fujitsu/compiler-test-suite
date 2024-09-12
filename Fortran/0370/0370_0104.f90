  type tp0
     integer(kind=4) :: i41 = 6_4     
  end type tp0

  type tp1
     type(tp0) :: tt(3)
     integer(kind=4) :: i41 = 3_4
     integer(kind=4) :: i42 = 4_4
  end type tp1
  type tc
     type(tp1) :: ta    = tp1(tp0(7),10,20)
     type(tp1) :: tb(2) = (/tp1(tp0(7_4)),tp1(tp0(7_4))/)
     type(tp1) :: tc(5) = tp1(tp0(7))
     type(tp1) :: td    = tp1((/tp0(7),tp0(8),tp0(9)/),10,20)
  end type tc

  type(tc) a
  print *, a%ta
  print *, a%tb
  print *, a%tc
  print *, a%td
end

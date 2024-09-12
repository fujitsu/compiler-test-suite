  type tp1
     integer(kind=4) :: ia = 10
     integer(kind=4) :: ib = 20
  end type tp1
  
  type(tp1) :: a1 = tp1(30,40)
  type(tp1) :: a2 = tp1(70)
  type(tp1) :: a3
  type(tp1),dimension(3) :: b1
  type(tp1),dimension(3) :: b2 = tp1(50,60)
  type(tp1),dimension(3) :: b3 = (/tp1(11,12),tp1(13,14),tp1(15,16)/)

  print *, a1
  print *, a2
  print *, a3

  print *, b1
  print *, b2
  print *, b3
end



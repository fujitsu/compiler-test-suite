  type tp1
     integer(kind=4) :: ma(10) = (/2,3,7,6,0,4,6,2,78,4/)
     integer(kind=4) :: mb = 4_4
  end type tp1
  type tp2
     integer(kind=4) :: mc
  end type tp2
  type tc
     type(tp1) :: t1
     type(tp2) :: t2(4)
     type(tp1) :: t3(2) = (/tp1(5,6),tp1((/9,0,3,0,4,10,5,0,4,75/),8)/)
  end type tc
  type tt
     integer(kind=4) :: aa(5) = 100_4
     type(tc) :: tx(2)
     integer(kind=4) :: bb(3) = 200_4
  end type tt

  type(tt) a(50)

  print *, a(1)
  print *, a(20)
end



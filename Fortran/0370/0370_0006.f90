  type tp1
     integer(kind=4) :: ia = 100
     integer(kind=4) :: ma(2) = (/1,2/)
     integer(kind=4) :: mb(3) = (/(i,i=4,6)/)
     integer(kind=4) :: ib = 200
  end type tp1
  
  type(tp1) :: a
  type(tp1) :: b = tp1(ia=300,ib=600)
  print *, a
  print *, b
end

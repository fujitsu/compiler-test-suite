  type tp1
     integer(kind=8) :: aaa = 6_8
     integer(kind=4) :: bbb = 5_2
  end type tp1
                          
  type(tp1),dimension(3) :: a
  print *, a
end

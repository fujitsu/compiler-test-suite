  type tp1
     integer(kind=8) :: aaa = 1_8
  end type tp1
                          
  type(tp1),dimension(3) :: a
  print *, a
end

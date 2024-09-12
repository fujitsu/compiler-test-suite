  type tp1
     integer(kind=8) :: aaa = 3_8
  end type tp1
  type tc
     type(tp1) :: t1
  end type tc
                          
  type(tc),dimension(3) :: a
  print *, a
end

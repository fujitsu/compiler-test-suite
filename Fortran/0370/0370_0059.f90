program main
  type tp1
     sequence
     integer(kind=4) :: i41 = 3_4
     integer(kind=4) :: i42
  end type tp1
  type tp2
     sequence
     integer(kind=4) :: i43
  end type tp2
  type tc
     sequence
     type(tp1) :: t1
     type(tp2) :: t2
     integer(kind=8) :: ii = 10
  end type tc
                          
  type(tc),dimension(3) :: a
  integer(kind=8) :: b = 300

  print *, a
  print *, b
end
